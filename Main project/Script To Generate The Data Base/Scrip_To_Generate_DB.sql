USE [master]
GO
/****** Object:  Database [Project_SQL]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE DATABASE [Project_SQL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_SQL', FILENAME = N'E:\iTi 3 Months Course\SQL Project\SQL PROJECT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Project_SQL_log', FILENAME = N'E:\iTi 3 Months Course\SQL Project\SQL PROJECT.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE SQL_Latin1_General_CP1_CI_AS
GO
ALTER DATABASE [Project_SQL] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_SQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_SQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_SQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_SQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_SQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_SQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_SQL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_SQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_SQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_SQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_SQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_SQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_SQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_SQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_SQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_SQL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project_SQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_SQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_SQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_SQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_SQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_SQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_SQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_SQL] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_SQL] SET  MULTI_USER 
GO
ALTER DATABASE [Project_SQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_SQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_SQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_SQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Project_SQL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_SQL', N'ON'
GO
ALTER DATABASE [Project_SQL] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [TrainingManager]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [TrainingManager] WITH PASSWORD=N'jFbCGZsh4ve/8f9HxfkkPwzmGSb4pl97/PPQdqRWvWs=', DEFAULT_DATABASE=[Project_SQL], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [TrainingManager] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [test]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [test] WITH PASSWORD=N'VmBCBBwCQ/ASmzwK8u3tO4SdDaw64NRA/Seoh9IFvlQ=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [test] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [student]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [student] WITH PASSWORD=N'N2AwNBnMgeG8vxAe9PfSvprMcfRTX/SYsAg3sYyQqSk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [student] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Mahmoud]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [Mahmoud] WITH PASSWORD=N'tVKoOJX0BAwSRWcyUvs25WNW7MDgJF+IudSL4ofPZIw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Mahmoud] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [instructor]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [instructor] WITH PASSWORD=N'EoL9+CK3H0T7N10EE8DU5aqx8ywIRrwBsCtE3unIWVc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [instructor] DISABLE
GO
/****** Object:  Login [DESKTOP-5HF77CK\Fathy]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [DESKTOP-5HF77CK\Fathy] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Admin]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [Admin] WITH PASSWORD=N'31Wl1ISvotD/9uwxGWWOy9I79K9Xpr3IyO5v3uCsQcM=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Admin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'XIczn8/hwdr9IDGcnPhy5y99/RORE9dKGZMgN6QsyLc=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 4/29/2023 10:49:00 AM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'aBMo2wuMxf3F0UT/Fv/8XXuVkmAKKc+nicTlprLgpqw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-5HF77CK\Fathy]
GO
USE [Project_SQL]
GO
/****** Object:  User [TrainingManager]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE USER [TrainingManager] FOR LOGIN [TrainingManager] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [student]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE USER [student] FOR LOGIN [student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [instructor]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE USER [instructor] FOR LOGIN [instructor] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Admin]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE USER [Admin] FOR LOGIN [Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TrainingManager]
GO
ALTER ROLE [db_datareader] ADD MEMBER [student]
GO
GRANT CONNECT TO [Admin] AS [dbo]
GO
GRANT CONNECT TO [instructor] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [student] AS [dbo]
GO
GRANT CONNECT TO [TrainingManager] AS [dbo]
GO
/****** Object:  Table [dbo].[Students_take_Exam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students_take_Exam](
	[Std_ID] [int] NOT NULL,
	[Exam_ID] [int] NOT NULL,
	[Questions_result] [int] NULL,
	[Std_Answer_Text_Question] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Std_Answer_Choose_Question] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Std_Answer_True_or_False] [bit] NOT NULL,
	[Questions_Id] [int] NOT NULL,
 CONSTRAINT [PK_Students_take_Exam] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Exam_ID] ASC,
	[Questions_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
GRANT INSERT ON [dbo].[Students_take_Exam] TO [student] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Students_take_Exam] TO [student] AS [dbo]
GO
/****** Object:  Table [dbo].[Intake]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intake](
	[Intake_ID] [int] NOT NULL,
	[Intake_Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Intake] PRIMARY KEY CLUSTERED 
(
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[Intake] TO [TrainingManager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Intake] TO [TrainingManager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Intake] TO [TrainingManager] AS [dbo]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Branch_ID] [int] NOT NULL,
	[Branch_Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[Branch] TO [TrainingManager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Branch] TO [TrainingManager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Branch] TO [TrainingManager] AS [dbo]
GO
/****** Object:  Table [dbo].[Track]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[Track_ID] [int] NOT NULL,
	[Track_Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[Track_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[Track] TO [TrainingManager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Track] TO [TrainingManager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Track] TO [TrainingManager] AS [dbo]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Std_ID] [int] NOT NULL,
	[Std_Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Std_Age] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
GRANT DELETE ON [dbo].[Students] TO [TrainingManager] AS [dbo]
GO
GRANT INSERT ON [dbo].[Students] TO [TrainingManager] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Students] TO [TrainingManager] AS [dbo]
GO
/****** Object:  Table [dbo].[Student_Intake]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Intake](
	[Std_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Intake] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Branch]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Branch](
	[Std_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Branch] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Track]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Track](
	[Std_ID] [int] NOT NULL,
	[Track_ID] [int] NOT NULL,
 CONSTRAINT [PK_Student_Track] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[Exam_ID] [int] NOT NULL,
	[Exam_Degree] [int] NOT NULL,
	[Allowance_Option] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Normal_Exam] [bit] NOT NULL,
	[Corrective_Exam] [bit] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Student_Info]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Student_Info] as
select Students.Std_ID, Std_Name, Std_Age, Exam.[Exam_Degree],[dbo].[Students_take_Exam].Exam_ID,Intake.Intake_ID, Intake_Name,[Student_Branch].[Branch_ID],[Branch_Name], [Track].[Track_ID], [Track_Name]
from Students  join Students_take_Exam 
on Students.Std_ID = Students_take_Exam.Std_ID
join
Student_Intake
on Student_Intake.Std_ID = Students.Std_ID
join
Intake
on  Student_Intake.Intake_ID = Intake.Intake_ID
join
[Student_Branch]
on [Student_Branch].[Std_ID] = [Students].[Std_ID]
join
[dbo].[Branch]
on [Student_Branch].[Branch_ID] = [Branch].[Branch_ID]
join
[dbo].[Student_Track]
on [Student_Track].[Std_ID] = [Students].[Std_ID]
join
[dbo].[Track]
on [Track].[Track_ID] = [Student_Track].[Track_ID]
join
[dbo].[Exam]
on Exam.Exam_ID = [dbo].[Students_take_Exam].[Exam_ID]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Ins_ID] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[Inst_Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Mgr_ID] [int] NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[Ins_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor_Teach_Course]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Teach_Course](
	[Course_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
 CONSTRAINT [PK_Instructor_Teach_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT ALTER ON [dbo].[Instructor_Teach_Course] TO [instructor] AS [dbo]
GO
GRANT DELETE ON [dbo].[Instructor_Teach_Course] TO [instructor] AS [dbo]
GO
GRANT INSERT ON [dbo].[Instructor_Teach_Course] TO [instructor] AS [dbo]
GO
GRANT SELECT ON [dbo].[Instructor_Teach_Course] TO [instructor] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Instructor_Teach_Course] TO [instructor] AS [dbo]
GO
/****** Object:  Table [dbo].[Instructor_Choose_Questions]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Choose_Questions](
	[Questions_ID] [int] NOT NULL,
	[Instructor_ID] [int] NOT NULL,
 CONSTRAINT [PK_Instructor_Choose_Questions] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT ALTER ON [dbo].[Instructor_Choose_Questions] TO [instructor] AS [dbo]
GO
GRANT INSERT ON [dbo].[Instructor_Choose_Questions] TO [instructor] AS [dbo]
GO
GRANT SELECT ON [dbo].[Instructor_Choose_Questions] TO [instructor] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Instructor_Choose_Questions] TO [instructor] AS [dbo]
GO
/****** Object:  Table [dbo].[Instructor_Sets_Exam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor_Sets_Exam](
	[Exam_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
	[Start_Time] [time](7) NOT NULL,
	[End_Time] [time](7) NOT NULL,
	[Year] [date] NOT NULL,
 CONSTRAINT [PK_Instructor_Sets_Exam] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT ALTER ON [dbo].[Instructor_Sets_Exam] TO [instructor] AS [dbo]
GO
GRANT DELETE ON [dbo].[Instructor_Sets_Exam] TO [instructor] AS [dbo]
GO
GRANT INSERT ON [dbo].[Instructor_Sets_Exam] TO [instructor] AS [dbo]
GO
GRANT SELECT ON [dbo].[Instructor_Sets_Exam] TO [instructor] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Instructor_Sets_Exam] TO [instructor] AS [dbo]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Questions_ID] [int] NOT NULL,
	[Degree] [int] NOT NULL,
	[Text_Questions] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Correct_Answer_Text_Questions] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[True_or_False_Questions] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Correct_Answer_True_or_False] [bit] NULL,
	[Choose_An_Answer_Question] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Correct_Answer_Choose_Question] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Course_Id] [int] NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Instructor_Info]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[Instructor_Info] as
select [Instructor].Ins_ID,Age,[Inst_Name],[Mgr_ID], [Instructor_Choose_Questions].[Questions_ID],[dbo].[Instructor_Teach_Course].[Course_ID],[Instructor_Sets_Exam].[Exam_ID]
from [dbo].[Instructor] join [dbo].[Instructor_Choose_Questions]
on  [Instructor].[Ins_ID] = [Instructor_Choose_Questions].[Instructor_ID]
join
[dbo].[Questions]
on [dbo].[Questions].[Questions_ID] = [dbo].[Instructor_Choose_Questions].[Questions_ID]
join
[dbo].[Instructor_Teach_Course]
on [dbo].[Instructor_Teach_Course].[Inst_ID] = [dbo].[Instructor].[Ins_ID]
join
[dbo].[Instructor_Sets_Exam]
on [dbo].[Instructor_Sets_Exam].[Inst_ID] = [dbo].[Instructor].[Ins_ID]
GO
/****** Object:  Table [dbo].[Course_Exams]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Exams](
	[Exam_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Exams] PRIMARY KEY CLUSTERED 
(
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_ID] [int] NOT NULL,
	[Min_Degree] [int] NOT NULL,
	[Max_Degree] [int] NOT NULL,
	[Name] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Branch]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Branch](
	[Course_ID] [int] NOT NULL,
	[Branch_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Branch] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Course_Info]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Course_Info] as
select  [dbo].[Course].[Course_ID], [dbo].[Course].[Min_Degree],  [dbo].[Course].[Max_Degree], [dbo].[Course].[Name],Course_Exams.Exam_ID, [dbo].[Branch].Branch_ID, [Branch].[Branch_Name]
from [dbo].[Course] join Course_Exams
on [dbo].[Course].Course_ID = Course_Exams.Course_ID
join
[dbo].[Course_Branch]
on [Course_Branch].[Course_ID] = [dbo].[Course].[Course_ID]
join
[dbo].[Branch]
on [Course_Branch].[Branch_ID] = [dbo].[Branch].[Branch_ID]
GO
/****** Object:  View [dbo].[Check_Exams]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Check_Exams] as
select [dbo].[Intake].[Intake_ID],[dbo].[Intake].[Intake_Name]
from [dbo].[Intake]
GO
/****** Object:  Table [dbo].[Course_Intake]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Intake](
	[Course_ID] [int] NOT NULL,
	[Intake_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Intake] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Intake_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Track]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Track](
	[Course_ID] [int] NOT NULL,
	[Track_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course_Track] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC,
	[Track_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor's_Selected_Students]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor's_Selected_Students](
	[Std_ID] [int] NOT NULL,
	[Inst_ID] [int] NOT NULL,
	[Exam_Id] [int] NOT NULL,
 CONSTRAINT [PK_Instructor's_Selected_Students] PRIMARY KEY CLUSTERED 
(
	[Std_ID] ASC,
	[Inst_ID] ASC,
	[Exam_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT ALTER ON [dbo].[Instructor's_Selected_Students] TO [instructor] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Instructor's_Selected_Students] TO [instructor] AS [dbo]
GO
GRANT INSERT ON [dbo].[Instructor's_Selected_Students] TO [instructor] AS [dbo]
GO
GRANT SELECT ON [dbo].[Instructor's_Selected_Students] TO [instructor] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Instructor's_Selected_Students] TO [instructor] AS [dbo]
GO
/****** Object:  Table [dbo].[Questions_Consist_Exam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions_Consist_Exam](
	[Questions_ID] [int] NOT NULL,
	[Exam_ID] [int] NOT NULL,
 CONSTRAINT [PK_Questions_Consist_Exam] PRIMARY KEY CLUSTERED 
(
	[Questions_ID] ASC,
	[Exam_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (1, N'Cairo')
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (2, N'Alexandria')
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (3, N'Beni-Suef')
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (4, N'Mansoura')
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (5, N'Tanta')
INSERT [dbo].[Branch] ([Branch_ID], [Branch_Name]) VALUES (6, N'Qina')
GO
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (1, 10, 60, N'SQL', NULL)
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (2, 10, 30, N'Java', NULL)
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (3, 10, 30, N'English', NULL)
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (4, 10, 30, N'Spanish', NULL)
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (5, 10, 30, N'HTML', NULL)
INSERT [dbo].[Course] ([Course_ID], [Min_Degree], [Max_Degree], [Name], [Description]) VALUES (6, 10, 30, N'CSS', NULL)
GO
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (1, 1)
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (2, 2)
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (3, 3)
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (4, 4)
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (5, 5)
INSERT [dbo].[Course_Branch] ([Course_ID], [Branch_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (1, 1)
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (2, 2)
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (3, 3)
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (4, 1)
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (5, 5)
INSERT [dbo].[Course_Exams] ([Exam_ID], [Course_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (1, 1)
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (2, 2)
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (3, 3)
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (4, 4)
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (5, 5)
INSERT [dbo].[Course_Intake] ([Course_ID], [Intake_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (1, 1)
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (2, 2)
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (3, 3)
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (4, 4)
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (5, 5)
INSERT [dbo].[Course_Track] ([Course_ID], [Track_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (1, 60, NULL, 1, 0)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (2, 30, NULL, 0, 1)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (3, 20, NULL, 0, 1)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (4, 30, NULL, 1, 0)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (5, 20, NULL, 0, 1)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (6, 30, NULL, 1, 0)
INSERT [dbo].[Exam] ([Exam_ID], [Exam_Degree], [Allowance_Option], [Normal_Exam], [Corrective_Exam]) VALUES (7, 60, NULL, 1, 0)
GO
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (1, 24, N'Ahmed Fathy', NULL)
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (2, 20, N'Manal Fahmy', 1)
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (3, 25, N'Ali Samy', NULL)
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (4, 25, N'Ali Khaled', NULL)
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (5, 19, N'Hamdy Fathy', 3)
INSERT [dbo].[Instructor] ([Ins_ID], [Age], [Inst_Name], [Mgr_ID]) VALUES (6, 22, N'Ali Maloul', 4)
GO
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (1, 1)
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (2, 2)
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (3, 3)
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (4, 4)
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (5, 5)
INSERT [dbo].[Instructor_Choose_Questions] ([Questions_ID], [Instructor_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (1, 1, CAST(N'19:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(N'2021-02-02' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (2, 2, CAST(N'09:00:00' AS Time), CAST(N'10:00:00' AS Time), CAST(N'2022-03-03' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (3, 3, CAST(N'07:00:00' AS Time), CAST(N'08:00:00' AS Time), CAST(N'2023-04-04' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (4, 4, CAST(N'05:00:00' AS Time), CAST(N'06:00:00' AS Time), CAST(N'2009-08-08' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (5, 5, CAST(N'03:00:00' AS Time), CAST(N'04:00:00' AS Time), CAST(N'2008-01-01' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (6, 6, CAST(N'02:00:00' AS Time), CAST(N'03:00:00' AS Time), CAST(N'2006-07-07' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (7, 1, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2023-04-28' AS Date))
INSERT [dbo].[Instructor_Sets_Exam] ([Exam_ID], [Inst_ID], [Start_Time], [End_Time], [Year]) VALUES (9, 1, CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2023-04-28' AS Date))
GO
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (1, 1)
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (2, 2)
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (3, 3)
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (4, 4)
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (5, 5)
INSERT [dbo].[Instructor_Teach_Course] ([Course_ID], [Inst_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Instructor's_Selected_Students] ([Std_ID], [Inst_ID], [Exam_Id]) VALUES (1, 1, 1)
INSERT [dbo].[Instructor's_Selected_Students] ([Std_ID], [Inst_ID], [Exam_Id]) VALUES (1, 1, 2)
GO
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (1, N'Programming')
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (2, N'English')
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (3, N'French')
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (4, N'Communication Skills')
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (5, N'SQL')
INSERT [dbo].[Intake] ([Intake_ID], [Intake_Name]) VALUES (6, N'C#')
GO
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (1, 30, N'Describe Database.', N'Collection of tables.', N'Is C# purly OOP?', 0, N'The first true object oriented language is: a) C++. b) SmallTalk. c) C#.', N'b', 1)
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (2, 30, N'What is a Primary key?', N'Unique key and not null constraint.', N'A relation might have multiple foreign keys?', 1, N'The first true object oriented language is: a) C++. b) SmallTalk. c) C#.', N'b', 1)
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (3, 30, N'What is an aliac command ?', N'It is refered in where clause to identify table or column.', N'A relation might have multiple foreign keys?', 1, N'Which of the following is not an SQL command: a) forget. b) select. c) where', N'a', 2)
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (4, 30, N'What is SQL?', N'SQL stands for Structured Query Language.', N'Is alter a DDL command?', 1, N'The primary key can be: a) null. b) not null. c) both null and not null.', N'b', 2)
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (5, 30, N'What is a join?', N'It is a keyword to query data from more tables.', N'Each column can have more than one data type?', 0, N'The primary key can be: a) null. b) not null. c) both null and not null.', N'b', 5)
INSERT [dbo].[Questions] ([Questions_ID], [Degree], [Text_Questions], [Correct_Answer_Text_Questions], [True_or_False_Questions], [Correct_Answer_True_or_False], [Choose_An_Answer_Question], [Correct_Answer_Choose_Question], [Course_Id]) VALUES (6, 30, N'What is a DB query?', N'It is a code that is written to get information back from the DB.', N'The condition in a where clause can refer to only one value?', 0, N'What is a table joined with itself called: a) Join. b) Outer Join. c) self-join.', N'c', 5)
GO
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (1, 1)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (1, 7)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (2, 1)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (2, 7)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (3, 3)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (4, 4)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (5, 5)
INSERT [dbo].[Questions_Consist_Exam] ([Questions_ID], [Exam_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (1, 1)
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (2, 1)
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (3, 2)
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (4, 3)
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (5, 4)
INSERT [dbo].[Student_Branch] ([Std_ID], [Branch_ID]) VALUES (6, 5)
GO
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (1, 1)
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (2, 2)
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (3, 3)
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (4, 4)
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (5, 5)
INSERT [dbo].[Student_Intake] ([Std_ID], [Intake_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (1, 1)
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (2, 2)
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (3, 3)
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (4, 4)
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (5, 5)
INSERT [dbo].[Student_Track] ([Std_ID], [Track_ID]) VALUES (6, 6)
GO
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (1, N'Ahmed Gamal', 17)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (2, N'Fahmy Ahmed', 16)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (3, N'Magdy Atia', 19)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (4, N'Kareem Fathy', 20)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (5, N'Ayman Magdy', 20)
INSERT [dbo].[Students] ([Std_ID], [Std_Name], [Std_Age]) VALUES (6, N'Omar Saleh', 18)
GO
INSERT [dbo].[Students_take_Exam] ([Std_ID], [Exam_ID], [Questions_result], [Std_Answer_Text_Question], [Std_Answer_Choose_Question], [Std_Answer_True_or_False], [Questions_Id]) VALUES (1, 1, 10, N'collection of table', N'b', 1, 1)
INSERT [dbo].[Students_take_Exam] ([Std_ID], [Exam_ID], [Questions_result], [Std_Answer_Text_Question], [Std_Answer_Choose_Question], [Std_Answer_True_or_False], [Questions_Id]) VALUES (1, 1, 20, N'collection of table', N'b', 1, 2)
GO
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (1, N'.net')
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (2, N'Devops')
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (3, N'2D')
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (4, N'SW testing')
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (5, N'e-learning')
INSERT [dbo].[Track] ([Track_ID], [Track_Name]) VALUES (6, N'GIS')
GO
/****** Object:  Index [Search_by_Exam]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE NONCLUSTERED INDEX [Search_by_Exam] ON [dbo].[Exam]
(
	[Normal_Exam] ASC,
	[Corrective_Exam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Search_by_Mgr_ID]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE NONCLUSTERED INDEX [Search_by_Mgr_ID] ON [dbo].[Instructor]
(
	[Mgr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Search_by_Questions_degree]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE NONCLUSTERED INDEX [Search_by_Questions_degree] ON [dbo].[Questions]
(
	[Degree] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Search_by_Student_Exam_Results]    Script Date: 4/29/2023 10:49:01 AM ******/
CREATE NONCLUSTERED INDEX [Search_by_Student_Exam_Results] ON [dbo].[Students_take_Exam]
(
	[Questions_result] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Course_Branch_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Course_Branch] CHECK CONSTRAINT [FK_Course_Branch_Branch]
GO
ALTER TABLE [dbo].[Course_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Course_Branch_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Branch] CHECK CONSTRAINT [FK_Course_Branch_Course]
GO
ALTER TABLE [dbo].[Course_Exams]  WITH CHECK ADD  CONSTRAINT [FK_Course_Exams_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Exams] CHECK CONSTRAINT [FK_Course_Exams_Course]
GO
ALTER TABLE [dbo].[Course_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Course_Intake_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Intake] CHECK CONSTRAINT [FK_Course_Intake_Course]
GO
ALTER TABLE [dbo].[Course_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Course_Intake_Intake] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[Course_Intake] CHECK CONSTRAINT [FK_Course_Intake_Intake]
GO
ALTER TABLE [dbo].[Course_Track]  WITH CHECK ADD  CONSTRAINT [FK_Course_Track_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Course_Track] CHECK CONSTRAINT [FK_Course_Track_Course]
GO
ALTER TABLE [dbo].[Course_Track]  WITH CHECK ADD  CONSTRAINT [FK_Course_Track_Track] FOREIGN KEY([Track_ID])
REFERENCES [dbo].[Track] ([Track_ID])
GO
ALTER TABLE [dbo].[Course_Track] CHECK CONSTRAINT [FK_Course_Track_Track]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Mngr] FOREIGN KEY([Mgr_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Mngr]
GO
ALTER TABLE [dbo].[Instructor_Choose_Questions]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Choose_Questions_Instructor] FOREIGN KEY([Instructor_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Choose_Questions] CHECK CONSTRAINT [FK_Instructor_Choose_Questions_Instructor]
GO
ALTER TABLE [dbo].[Instructor_Sets_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Sets_Exam_Instructor] FOREIGN KEY([Inst_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Sets_Exam] CHECK CONSTRAINT [FK_Instructor_Sets_Exam_Instructor]
GO
ALTER TABLE [dbo].[Instructor_Teach_Course]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Teach_Course_Instructor] FOREIGN KEY([Inst_ID])
REFERENCES [dbo].[Instructor] ([Ins_ID])
GO
ALTER TABLE [dbo].[Instructor_Teach_Course] CHECK CONSTRAINT [FK_Instructor_Teach_Course_Instructor]
GO
ALTER TABLE [dbo].[Instructor's_Selected_Students]  WITH CHECK ADD  CONSTRAINT [FK_Instructor's_Selected_Students_Exam] FOREIGN KEY([Exam_Id])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Instructor's_Selected_Students] CHECK CONSTRAINT [FK_Instructor's_Selected_Students_Exam]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Course]
GO
ALTER TABLE [dbo].[Questions_Consist_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Consist_Exam_Exam] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Questions_Consist_Exam] CHECK CONSTRAINT [FK_Questions_Consist_Exam_Exam]
GO
ALTER TABLE [dbo].[Student_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Student_Branch_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Student_Branch] CHECK CONSTRAINT [FK_Student_Branch_Branch]
GO
ALTER TABLE [dbo].[Student_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake_Intake] FOREIGN KEY([Intake_ID])
REFERENCES [dbo].[Intake] ([Intake_ID])
GO
ALTER TABLE [dbo].[Student_Intake] CHECK CONSTRAINT [FK_Student_Intake_Intake]
GO
ALTER TABLE [dbo].[Student_Intake]  WITH CHECK ADD  CONSTRAINT [FK_Student_Intake_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Student_Intake] CHECK CONSTRAINT [FK_Student_Intake_Students]
GO
ALTER TABLE [dbo].[Student_Track]  WITH CHECK ADD  CONSTRAINT [FK_Student_Track_Track] FOREIGN KEY([Track_ID])
REFERENCES [dbo].[Track] ([Track_ID])
GO
ALTER TABLE [dbo].[Student_Track] CHECK CONSTRAINT [FK_Student_Track_Track]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Exam] FOREIGN KEY([Exam_ID])
REFERENCES [dbo].[Exam] ([Exam_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Exam]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Questions] FOREIGN KEY([Questions_Id])
REFERENCES [dbo].[Questions] ([Questions_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Questions]
GO
ALTER TABLE [dbo].[Students_take_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Students_take_Exam_Students] FOREIGN KEY([Std_ID])
REFERENCES [dbo].[Students] ([Std_ID])
GO
ALTER TABLE [dbo].[Students_take_Exam] CHECK CONSTRAINT [FK_Students_take_Exam_Students]
GO
/****** Object:  StoredProcedure [dbo].[CorrectExamForStudent]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[CorrectExamForStudent] @std_id INT, @exam_id INT
AS
BEGIN
    -- Create a temp table to hold the student exam results
    CREATE TABLE #tmpExamResults(
        [Std_ID] [int] NOT NULL,
        [Exam_ID] [int] NOT NULL,
        [Questions_result] [int] NULL,
        [Std_Answer_Text_Question] [nvarchar](max) NOT NULL,
        [Std_Answer_Choose_Question] [nvarchar](1) NOT NULL,
        [Std_Answer_True_or_False] [bit] NOT NULL,
        [Questions_Id] [int] NOT NULL
    )

    -- Insert student exam results into temp table
    INSERT INTO #tmpExamResults 
    SELECT * FROM Students_take_Exam WHERE Std_ID = @std_id AND Exam_ID = @exam_id

    -- Loop over each row in the temp table
    DECLARE @questionId INT
    DECLARE @textAnswer NVARCHAR(MAX)
    DECLARE @chooseAnswer NVARCHAR(1)
    DECLARE @trueFalseAnswer BIT
    DECLARE @correctTextAnswer NVARCHAR(MAX)
    DECLARE @correctChooseAnswer NVARCHAR(1)
    DECLARE @correctTrueFalseAnswer BIT
    DECLARE @questionsResult INT

    DECLARE examCursor CURSOR FOR 
    SELECT tr.Questions_Id, tr.Std_Answer_Text_Question, tr.Std_Answer_Choose_Question, 
        tr.Std_Answer_True_or_False, q.Correct_Answer_Text_Questions, 
        q.Correct_Answer_Choose_Question, q.Correct_Answer_True_or_False, tr.Questions_result
    FROM #tmpExamResults tr
    INNER JOIN Questions q ON tr.Questions_Id = q.Questions_ID

    OPEN examCursor
    FETCH NEXT FROM examCursor INTO @questionId, @textAnswer, @chooseAnswer, @trueFalseAnswer,
        @correctTextAnswer, @correctChooseAnswer, @correctTrueFalseAnswer, @questionsResult

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Check if the student's answer matches the model answer for each question
		DECLARE @student_mark INT = 0;
		
		IF (@textAnswer LIKE '%' + @correctTextAnswer + '%' 
		OR @textAnswer LIKE '%[^a-zA-Z]'+ @correctTextAnswer + '[^a-zA-Z]%') -- Use Regex
			SET @student_mark = @student_mark + 10
		
		IF (@chooseAnswer = @correctChooseAnswer)
			SET @student_mark = @student_mark + 10

		IF (@trueFalseAnswer = @correctTrueFalseAnswer)
			SET @student_mark = @student_mark + 10


            -- Update the question result by increasing it by student's mark
            SET @questionsResult = @student_mark
            UPDATE Students_take_Exam SET Questions_result = @questionsResult 
            WHERE Std_ID = @std_id AND Exam_ID = @exam_id AND Questions_Id = @questionId


        FETCH NEXT FROM examCursor INTO @questionId, @textAnswer, @chooseAnswer, @trueFalseAnswer,
            @correctTextAnswer, @correctChooseAnswer, @correctTrueFalseAnswer, @questionsResult
    END

    CLOSE examCursor
    DEALLOCATE examCursor

    -- Drop the temp table
    DROP TABLE #tmpExamResults
END
GO
/****** Object:  StoredProcedure [dbo].[GenerateExam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GenerateExam] @crs_id INT, @ins_id INT
AS
BEGIN

 -- Get instructor and course and make sure he teaches that course

 IF NOT EXISTS(SELECT * FROM Instructor_Teach_Course ic WHERE ic.Course_ID = @crs_id 
 and ic.Inst_ID = @ins_id)
 BEGIN
    RAISERROR('Instructor does not teach this course',16,1)
    RETURN
 END

 -- Add your exam generation code here

END

GO
/****** Object:  StoredProcedure [dbo].[GenerateRandomExam]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GenerateRandomExam] @crs_id INT, @ins_id INT, @exam_degree INT,
@is_normal_exam BIT, @is_corrective_exam BIT, @start_time time(7), @end_time time(7)
AS
BEGIN
	-- Exam degree must be multiples of 30
	IF @exam_degree % 30 <> 0
	BEGIN
		-- Throw error if exam degree is not divisible by 30
		RAISERROR('Exam degree must be a multiple of 30',16,1)
		RETURN
	END

	DECLARE @maxExamDegree INT = (SELECT SUM(q.Degree) from Questions q where q.Course_Id
	= @crs_id)

	IF (@maxExamDegree < @exam_degree)
	BEGIN
		 -- Throw error if number of questions available is not enough to make an exam with the
		 -- requested degree
		RAISERROR('Not enough questions to make an exam with the requested degree,
		please add more questions',16,1)
		RETURN
	END
 
 -- Get instructor and course and make sure he teaches that course

 IF NOT EXISTS(SELECT * FROM Instructor_Teach_Course ic WHERE ic.Course_ID = @crs_id 
 and ic.Inst_ID = @ins_id)
 BEGIN
 -- Throw error if instructor does not teach course
    RAISERROR('Instructor does not teach this course',16,1)
    RETURN
 END

 -- Check if exam degree is less than max course degree

 DECLARE @maxCourseMark INT =(SELECT c.Max_Degree from Course c where Course_ID = @crs_id)
 IF (@maxCourseMark < @exam_degree)
 BEGIN
  -- Throw error if exam degree exceeds max course degree
    RAISERROR('Exam degree is larger than max course degree',16,1)
    RETURN
 END

 DECLARE @lastExamId INT = (SELECT top 1 Exam_ID from Exam order by Exam_ID DESC)

 -- Create the exam record

 INSERT INTO Exam VALUES ((@lastExamId+1), @exam_degree, NULL, @is_normal_exam, @is_corrective_exam);

 DECLARE @currentYear DATE = (SELECT CONVERT(date, GETDATE()))

 INSERT INTO Instructor_Sets_Exam VALUES (@lastExamId+1, @ins_id, @start_time, @end_time, @currentYear)

 -- Start generating exam questions
   -- Loop over questions and add them to exam

  DECLARE @current_degree INT = 0
  DECLARE @questionId INT = 0

  WHILE @current_degree < @exam_degree
  BEGIN
    -- Select a random question from the Questions table
    SET @questionId = (
      SELECT TOP 1 q.Questions_ID
      FROM Questions q where q.Course_Id = @crs_id
      ORDER BY NEWID()
    )

    -- Insert a new row into the Questions_Consist_Exam table to associate the selected question with the exam
    IF NOT EXISTS (SELECT * from Questions_Consist_Exam where Questions_ID = @questionId and
	Exam_ID = (@lastExamId+1))
	BEGIN
			INSERT INTO Questions_Consist_Exam 
		VALUES (
		  @questionId,
		  @lastExamId+1
		)

		SET @current_degree = @current_degree + 30
	END
  END
END
GO
/****** Object:  StoredProcedure [dbo].[GrantTablePermission]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GrantTablePermission]
    @database_user varchar(50),
    @table_name varchar(50),
    @permission varchar(50)
AS
BEGIN
    DECLARE @sql nvarchar(max);
    SET @sql = 'GRANT ' + @permission + ' ON ' + @table_name + ' TO ' + @database_user;
    EXEC sp_executesql @sql;
END

GO
/****** Object:  StoredProcedure [dbo].[StudentAnswerExamQuestion]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[StudentAnswerExamQuestion] @exam_id INT, @std_id INT, @q_id INT,
@text_q_answer nvarchar(max), @choose_q_answer nvarchar(1), @tf_q_answer BIT
AS
BEGIN
	-- Check if start time of exam is due and exam can start answering questions or else return error
	DECLARE @exam_start_time time(7) = (SELECT e.Start_Time from Instructor_Sets_Exam e where e.Exam_ID = @exam_id)
	DECLARE @exam_end_time time(7) = (SELECT e.End_Time from Instructor_Sets_Exam e where e.Exam_ID = @exam_id)
	DECLARE @current_time time = (SELECT CONVERT(time, GETDATE()))
	
	if (@current_time < @exam_start_time or @current_time > @exam_end_time)
	BEGIN
		-- Throw error if exam time is not due
		RAISERROR('Exam cannot be taken at the current time',16,1)
		RETURN
	END

	-- Make sure that student can take this exam as assigned by instructor

	IF NOT EXISTS (SELECT * from [Instructor's_Selected_Students] s where s.Exam_Id = @exam_id
	 and s.Std_ID = @std_id)
	 	BEGIN
		-- Throw error if student can't do this exam
		RAISERROR('You cannot take this exam, contact your instructor',16,1)
		RETURN
	END

	-- Make sure that selected question exists in exam
		IF NOT EXISTS (SELECT * from Questions_Consist_Exam q where q.Exam_ID = @exam_id
		and q.Questions_ID = @q_id)
	 	BEGIN
		-- Throw error if exam does not contain the question
		RAISERROR('The provided question id does not exist in the exam',16,1)
		RETURN
	END

	-- If student answered this question previously throw an error
	IF Exists (SELECT * from Students_take_Exam where Exam_ID = @exam_id and
	Std_ID = @std_id and Questions_Id = @q_id)
		BEGIN
			-- Throw error if exam does not contain the question
			RAISERROR('You answered this question previously, you cannot edit your answers',16,1)
			RETURN
		END

	INSERT into Students_take_Exam VALUES (@std_id, @exam_id, NULL, 
	@text_q_answer, @choose_q_answer, @tf_q_answer, @q_id)
END
GO
/****** Object:  Trigger [dbo].[Check_Max_Degree]    Script Date: 4/29/2023 10:49:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[Check_Max_Degree]
ON [dbo].[Course]
after insert
as
begin
   IF EXISTS (SELECT 1 FROM inserted WHERE Max_Degree > 30)
   begin
      raiserror ('Value must be 30 or lower', 16, 1)
      rollback transaction
      return
   end
end;
GO
ALTER TABLE [dbo].[Course] ENABLE TRIGGER [Check_Max_Degree]
GO
USE [master]
GO
ALTER DATABASE [Project_SQL] SET  READ_WRITE 
GO
