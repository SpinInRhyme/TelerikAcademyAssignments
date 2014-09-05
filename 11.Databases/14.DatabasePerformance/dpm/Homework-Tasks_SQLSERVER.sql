use performancetest

Count INT;
SET @Count=0;
WHILE(@Count<10000000) --Feel free to stop this when u get bored
BEGIN
	DECLARE @Date datetime = 
	DATEADD(month, CONVERT(varbinary, newid()) % (50 * 12), getdate());
	INSERT INTO Logs(LogText,LogDate)
	VALUES('Text '+CONVERT(nvarchar,@Count),@Date)
	SET @Count=@Count+1
END
GO

CHECKPOINT; DBCC DROPCLEANBUFFERS;
GO
SELECT LogText FROM Logs
WHERE LogDate > '31-Dec-1990' and LogDate < '1-Jan-2014'

--Task 2
CREATE INDEX IDX_Logs_MsgPrice
ON Logs(LogDate)
GO

CHECKPOINT; DBCC DROPCLEANBUFFERS;
GO
SELECT * FROM Logs
WHERE LogDate > '31-Dec-2011' and LogDate < '1-Jan-2014'

--Task3
CHECKPOINT; DBCC DROPCLEANBUFFERS;
GO
SELECT * FROM Logs
WHERE LogText LIKE '%xt7%'


CHECKPOINT; DBCC DROPCLEANBUFFERS;
GO

CREATE FULLTEXT CATALOG LogsFullTextCatalog
WITH ACCENT_SENSITIVITY = OFF

CREATE FULLTEXT INDEX ON Logs(LogText)
KEY INDEX PK_Logs
ON LogsFullTextCatalog
WITH CHANGE_TRACKING AUTO
GO

CHECKPOINT; DBCC DROPCLEANBUFFERS;
GO

SELECT * FROM Logs
WHERE CONTAINS(LogText, '100')
GO