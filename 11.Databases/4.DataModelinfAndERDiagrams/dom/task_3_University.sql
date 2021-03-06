/****** Object:  Database [University System]    Script Date: 22.8.2014 г. 1:42:36 ******/
CREATE DATABASE [University System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'University System', FILENAME = N'D:\Programs\Microsoft SQL Server 2014\MSSQL12.MSSQLSERVER\MSSQL\DATA\University System.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'University System_log', FILENAME = N'D:\Programs\Microsoft SQL Server 2014\MSSQL12.MSSQLSERVER\MSSQL\DATA\University System_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [University System] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [University System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [University System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [University System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [University System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [University System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [University System] SET ARITHABORT OFF 
GO
ALTER DATABASE [University System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [University System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [University System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [University System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [University System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [University System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [University System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [University System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [University System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [University System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [University System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [University System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [University System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [University System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [University System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [University System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [University System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [University System] SET RECOVERY FULL 
GO
ALTER DATABASE [University System] SET  MULTI_USER 
GO
ALTER DATABASE [University System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [University System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [University System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [University System] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [University System] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'University System', N'ON'
GO
USE [University System]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[department_ID] [int] NOT NULL,
	[professor_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Faculty_ID] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professor]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Department_ID] [int] NULL,
 CONSTRAINT [PK_Professor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Professors_Titles]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Professors_Titles](
	[Professor_ID] [int] NOT NULL,
	[Title_ID] [int] NOT NULL,
 CONSTRAINT [PK_Professors_Titles] PRIMARY KEY CLUSTERED 
(
	[Professor_ID] ASC,
	[Title_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[faculty_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students_Courses]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_Courses](
	[student_ID] [int] NOT NULL,
	[course_ID] [int] NOT NULL,
 CONSTRAINT [PK_Students_Courses] PRIMARY KEY CLUSTERED 
(
	[student_ID] ASC,
	[course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 22.8.2014 г. 1:42:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](10) NULL,
 CONSTRAINT [PK_Titles_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([department_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Professor] FOREIGN KEY([professor_ID])
REFERENCES [dbo].[Professor] ([ID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Professor]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Faculty] FOREIGN KEY([Faculty_ID])
REFERENCES [dbo].[Faculty] ([ID])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Faculty]
GO
ALTER TABLE [dbo].[Professor]  WITH CHECK ADD  CONSTRAINT [FK_Professor_Department1] FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([ID])
GO
ALTER TABLE [dbo].[Professor] CHECK CONSTRAINT [FK_Professor_Department1]
GO
ALTER TABLE [dbo].[Professors_Titles]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Titles_Professor] FOREIGN KEY([Professor_ID])
REFERENCES [dbo].[Professor] ([ID])
GO
ALTER TABLE [dbo].[Professors_Titles] CHECK CONSTRAINT [FK_Professors_Titles_Professor]
GO
ALTER TABLE [dbo].[Professors_Titles]  WITH CHECK ADD  CONSTRAINT [FK_Professors_Titles_Titles] FOREIGN KEY([Title_ID])
REFERENCES [dbo].[Titles] ([ID])
GO
ALTER TABLE [dbo].[Professors_Titles] CHECK CONSTRAINT [FK_Professors_Titles_Titles]
GO
ALTER TABLE [dbo].[Students_Courses]  WITH CHECK ADD  CONSTRAINT [FK_Students_Courses_Course] FOREIGN KEY([course_ID])
REFERENCES [dbo].[Course] ([ID])
GO
ALTER TABLE [dbo].[Students_Courses] CHECK CONSTRAINT [FK_Students_Courses_Course]
GO
ALTER TABLE [dbo].[Students_Courses]  WITH CHECK ADD  CONSTRAINT [FK_Students_Courses_Student] FOREIGN KEY([student_ID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Students_Courses] CHECK CONSTRAINT [FK_Students_Courses_Student]
GO
USE [master]
GO
ALTER DATABASE [University System] SET  READ_WRITE 
GO
