USE [master]
GO
/****** Object:  Database [DEMO_2020_1]    Script Date: 11.09.2023 16:20:46 ******/
CREATE DATABASE [DEMO_2020_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEMO_2020_1', FILENAME = N'C:\Users\Programmer\DEMO_2020_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DEMO_2020_1_log', FILENAME = N'C:\Users\Programmer\DEMO_2020_1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DEMO_2020_1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEMO_2020_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEMO_2020_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DEMO_2020_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEMO_2020_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEMO_2020_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DEMO_2020_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEMO_2020_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DEMO_2020_1] SET  MULTI_USER 
GO
ALTER DATABASE [DEMO_2020_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEMO_2020_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEMO_2020_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEMO_2020_1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DEMO_2020_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DEMO_2020_1] SET QUERY_STORE = OFF
GO
USE [DEMO_2020_1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DEMO_2020_1]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11.09.2023 16:20:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParentCategoryId] [int] NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[DateOfRegistration] [date] NOT NULL,
	[ClientTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientType](
	[ClientTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ClientTypeName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ClientType] PRIMARY KEY CLUSTERED 
(
	[ClientTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complect]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complect](
	[ComplectId] [int] IDENTITY(1,1) NOT NULL,
	[MainGoodId] [int] NOT NULL,
	[SecondGoodId] [int] NOT NULL,
 CONSTRAINT [PK_Coplect] PRIMARY KEY CLUSTERED 
(
	[ComplectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developer]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developer](
	[DeveloperId] [int] IDENTITY(1,1) NOT NULL,
	[DeveloperName] [nvarchar](1000) NOT NULL,
	[WorkBeginDate] [date] NOT NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[DeveloperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Good]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Good](
	[GoodId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[GoodName] [nvarchar](200) NOT NULL,
	[MainPhoto] [nvarchar](50) NOT NULL,
	[SecondPhotos] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Weight] [float] NULL,
	[Width] [float] NULL,
	[Heigth] [float] NULL,
	[Length] [float] NULL,
	[DeveloperId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Good] PRIMARY KEY CLUSTERED 
(
	[GoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonId] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonGood]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonGood](
	[SeasonGoodId] [int] IDENTITY(1,1) NOT NULL,
	[SeasonId] [int] NOT NULL,
	[GoodId] [int] NOT NULL,
 CONSTRAINT [PK_SeasonGood] PRIMARY KEY CLUSTERED 
(
	[SeasonGoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sell]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[SellId] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateSell] [datetime] NOT NULL,
 CONSTRAINT [PK_Sell] PRIMARY KEY CLUSTERED 
(
	[SellId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellVisit]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellVisit](
	[SellVisitId] [int] IDENTITY(1,1) NOT NULL,
	[SellId] [int] NOT NULL,
	[VisitId] [int] NOT NULL,
 CONSTRAINT [PK_SellVisit] PRIMARY KEY CLUSTERED 
(
	[SellVisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](50) NOT NULL,
	[ServiceDescription] [nvarchar](1000) NOT NULL,
	[Price] [float] NOT NULL,
	[TimeLength] [int] NOT NULL,
	[MainPhoto] [nvarchar](100) NOT NULL,
	[SecondPhotos] [nvarchar](max) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceShare]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceShare](
	[ServiceShareId] [int] IDENTITY(1,1) NOT NULL,
	[ShareId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [PK_ServiceShare] PRIMARY KEY CLUSTERED 
(
	[ServiceShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[ShareId] [int] IDENTITY(1,1) NOT NULL,
	[ShareName] [nvarchar](50) NOT NULL,
	[ShareDescription] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Share] PRIMARY KEY CLUSTERED 
(
	[ShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[SpecialityId] [int] IDENTITY(1,1) NOT NULL,
	[SpecialityPay] [float] NOT NULL,
	[SpecialityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreId] [int] IDENTITY(1,1) NOT NULL,
	[GoodId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[TimeSheetId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ServiceTime] [time](7) NOT NULL,
	[GenderCheck] [bit] NOT NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[TimeSheetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visit]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[TimeSheetId] [int] NOT NULL,
	[DateRegs] [datetime] NOT NULL,
	[Paid] [bit] NOT NULL,
	[Rewiew] [nvarchar](1000) NULL,
	[DateActual] [datetime] NULL,
	[Documents] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Visit] PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 11.09.2023 16:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[WorkerId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[PassportSeries] [nvarchar](10) NOT NULL,
	[PasssportId] [nvarchar](10) NOT NULL,
	[PassportCode] [nvarchar](10) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Birthday] [date] NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[PayCoeff] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[WorkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Developer] ON 

INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (1, N'Princeton Review', CAST(N'2015-01-06' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (2, N'Кнорус', CAST(N'2017-08-18' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (3, N'Яуза', CAST(N'2015-10-22' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (4, N'Аванта+', CAST(N'2017-02-22' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (5, N'Dorling Kindersley', CAST(N'2015-01-02' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (6, N'Delta Publishing', CAST(N'2017-05-17' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (7, N'Проспект', CAST(N'2017-11-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (8, N'Express Publishing', CAST(N'2016-09-15' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (9, N'Эксмо-Пресс', CAST(N'2018-02-26' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (10, N'Розовый жираф', CAST(N'2017-09-20' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (11, N'Стандарт-Коллекция', CAST(N'2015-11-07' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (12, N'Медиарама', CAST(N'2016-10-17' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (13, N'Вагриус', CAST(N'2018-06-07' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (14, N'Академкнига', CAST(N'2015-05-13' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (15, N'Прогресс', CAST(N'2018-06-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (16, N'Возвращение', CAST(N'2017-01-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (17, N'АСТ', CAST(N'2017-10-31' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (18, N'Ladybird', CAST(N'2017-02-15' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (19, N'ЛитРес', CAST(N'2017-06-21' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (20, N'Матезис', CAST(N'2017-10-12' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (21, N'Gallimard', CAST(N'2016-08-23' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (22, N'Современник', CAST(N'2016-03-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (23, N'Алгоритм', CAST(N'2015-07-21' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (24, N'Антология', CAST(N'2017-06-04' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (25, N'Росмэн', CAST(N'2017-04-14' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (26, N'Просвещение', CAST(N'2018-03-24' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (27, N'Мир хобби', CAST(N'2016-09-27' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (28, N'Попурри', CAST(N'2015-05-24' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (29, N'Феникс', CAST(N'2016-09-07' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (30, N'Абрис', CAST(N'2017-10-24' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (31, N'Де Агостини', CAST(N'2015-08-08' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (32, N'Виват', CAST(N'2018-04-11' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (33, N'Весь мир', CAST(N'2017-10-31' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (34, N'Велес-ВА', CAST(N'2017-09-09' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (35, N'Дрофа', CAST(N'2015-08-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (36, N'Эксмо', CAST(N'2015-03-16' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (37, N'Аврора', CAST(N'2016-09-24' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (38, N'Cambridge', CAST(N'2015-08-18' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (39, N'Планета', CAST(N'2017-11-04' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (40, N'Вита Нова', CAST(N'2017-03-28' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (41, N'РОССПЭН', CAST(N'2017-09-04' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (42, N'Мир', CAST(N'2017-11-18' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (43, N'Росток', CAST(N'2017-10-20' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (44, N'Питер', CAST(N'2018-05-06' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (45, N'Вита-Пресс', CAST(N'2016-10-25' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (46, N'Литературная Россия', CAST(N'2015-02-03' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (47, N'Флинта', CAST(N'2017-04-10' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (48, N'Академический проект', CAST(N'2016-12-02' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (49, N'ИНФРА-М', CAST(N'2015-11-21' AS Date))
INSERT [dbo].[Developer] ([DeveloperId], [DeveloperName], [WorkBeginDate]) VALUES (50, N'Прометей', CAST(N'2017-02-11' AS Date))
SET IDENTITY_INSERT [dbo].[Developer] OFF
GO
SET IDENTITY_INSERT [dbo].[Good] ON 

INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (1, NULL, N'Super Minds. Level 4. Workbook with Online Resources', N'701132.jpg', NULL, 1210, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (2, NULL, N'Super Minds. Workbook 2 with Online Resources', N'701128.jpg', NULL, 1200, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (3, NULL, N'Eyes Open. Level 3. Student''s Book', N'700890.jpg', NULL, 1350, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (4, NULL, N'Advanced Grammar in Use. Book without Answers', N'700673.jpg', NULL, 1850, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (5, NULL, N'Английский на каждый день', N'698477.jpg', NULL, 670, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (6, NULL, N'English for Everyone. English Vocabulary Builder', N'715802.jpg', NULL, 1980, NULL, NULL, NULL, NULL, 5, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (7, NULL, N'Cracking GMAT Premium 2020 Edition. 6 Practice Tests', N'724652.jpg', NULL, 3140, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (8, NULL, N'Учебник английского языка. Полный курс', N'729944.jpg', NULL, 1000, NULL, NULL, NULL, NULL, 36, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (9, NULL, N'Английский без страха для тех, кому за...', N'720888.jpg', NULL, 290, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (10, NULL, N'Grammarway 2. Teacher''s Book. Elementary', N'702075.jpg', NULL, 910, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (11, NULL, N'Tree or Three? An elementary pronunciation course', N'701141.jpg', NULL, 1870, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (12, NULL, N'Prism Reading. Intro. Student''s Book', N'699858.jpg', NULL, 2930, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (13, NULL, N'Think. Level 3. B1+. Student''s Book', N'701135.jpg', NULL, 1640, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (14, NULL, N'Учим английский язык с енотами-полиглотами', N'724934.jpg', NULL, 340, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (15, NULL, N'Super Minds. Workbook 1 with Online Resources', N'701125.jpg', NULL, 1230, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (16, NULL, N'Говори как английская королева. The Queen''s English and how to use it', N'699791.jpg', NULL, 420, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (17, NULL, N'Dive in! Blue', N'729198.jpg', NULL, 630, NULL, NULL, NULL, NULL, 6, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (18, NULL, N'Вся грамматика английского языка в таблицах. Учебное пособие', N'716788.jpg', NULL, 390, NULL, NULL, NULL, NULL, 47, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (19, NULL, N'New Enterprise A2. Workbook with digibook app', N'701884.jpg', NULL, 1220, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (20, NULL, N'Eyes Open Level 1 Student''s Book', N'700889.jpg', NULL, 1340, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (21, NULL, N'Английский язык. Популярный иллюстрированный самоучитель', N'726891.jpg', NULL, 400, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (22, NULL, N'Grammarway 1. Book with Answers. Beginner', N'702074.jpg', NULL, 1270, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (23, NULL, N'Business Vocabulary in Use. Advanced. Book with Answers', N'700674.jpg', NULL, 2220, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (24, NULL, N'Разговорный английский в диалогах. Учебное пособие', N'730838.jpg', NULL, 1140, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (25, NULL, N'Английский без барьеров. For beginners', N'722958.jpg', NULL, 420, NULL, NULL, NULL, NULL, 44, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (26, NULL, N'Pocket English Grammar (Карманная грамматика английского языка). Справочное пособие', N'690825.jpg', NULL, 390, NULL, NULL, NULL, NULL, 49, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (27, NULL, N'Evolve. Level 1. Student''s Book', N'702640.jpg', NULL, 1840, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (28, NULL, N'Реальный English. Как подружиться с грамматикой раз и навсегда', N'704508.jpg', NULL, 690, NULL, NULL, NULL, NULL, 29, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (29, NULL, N'English Vocabulary in Use. Advanced. Book with Answers', N'700703.jpg', NULL, 1860, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (30, NULL, N'Быстрый английский. Тренажер по чтению', N'715170.jpg', NULL, 240, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (31, NULL, N'Деловой английский язык. (Бакалавриат и магистратура). Учебное пособие', N'712853.jpg', NULL, 1080, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (32, NULL, N'Английский язык. Самые нужные правила', N'729858.jpg', NULL, 180, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (33, NULL, N'Legal English. Английский язык для юристов. Учебник', N'707289.jpg', NULL, 2720, NULL, NULL, NULL, NULL, 49, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (34, NULL, N'OK English! Все правила английского языка с упражнениями', N'694544.jpg', NULL, 370, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (35, NULL, N'Dive in! Orange', N'729200.jpg', NULL, 650, NULL, NULL, NULL, NULL, 6, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (36, NULL, N'Английская грамматика. Просто и понятно: правила, модели, упражнения. Учебное пособие', N'716808.jpg', NULL, 2060, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (37, NULL, N'Grammar in Use. Intermediate. Student''s Book without Answers', N'700903.jpg', NULL, 1740, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (38, NULL, N'Современная английская грамматика в таблицах', N'721525.jpg', NULL, 340, NULL, NULL, NULL, NULL, 9, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (39, NULL, N'Everyday Vocabulary + Grammar. For Intermediate Students. Учебное пособие', N'722745.jpg', NULL, 1180, NULL, NULL, NULL, NULL, 24, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (40, NULL, N'English for Everyone. English Idioms', N'715801.jpg', NULL, 2290, NULL, NULL, NULL, NULL, 5, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (41, NULL, N'Вся грамматика английского языка. Теория и практика', N'724335.jpg', NULL, 410, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (42, NULL, N'Говорим по-английски', N'706297.jpg', NULL, 220, NULL, NULL, NULL, NULL, 32, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (43, NULL, N'Business Vocabulary in Use. Intermediate. Book with Answers and Enhanced ebook', N'700676.jpg', NULL, 2690, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (44, NULL, N'Безупречная английская грамматика. Простые правила и увлекательные тесты', N'723769.jpg', NULL, 720, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (45, NULL, N'Exam Booster For Advanced Without Ans Key + Audio', N'714676.jpg', NULL, 1300, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (46, NULL, N'Grammar in Use. Intermediate. Student''s Book with Answers and Interactive eBook', N'700900.jpg', NULL, 2380, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (47, NULL, N'Английская грамматика в схемах и таблицах', N'713804.jpg', NULL, 170, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (48, NULL, N'Английский язык. Тренажер по чтению', N'710082.jpg', NULL, 170, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (49, NULL, N'Английский язык для технических специальностей. Учебное пособие', N'730048.jpg', NULL, 2550, NULL, NULL, NULL, NULL, 49, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (50, NULL, N'Интенсивный английский 4 в 1: говорим, читаем, пишем, слушаем', N'716807.jpg', NULL, 1840, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (51, NULL, N'Английские пословицы и поговорки. Учебное пособие', N'714143.jpg', NULL, 260, NULL, NULL, NULL, NULL, 47, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (52, NULL, N'Super Minds. Level 3. Workbook with Online Resources', N'701130.jpg', NULL, 1200, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (53, NULL, N'Английский язык. Времена глаголов', N'710081.jpg', NULL, 150, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (54, NULL, N'Английский курсив: прописи', N'715875.jpg', NULL, 300, NULL, NULL, NULL, NULL, 3, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (55, NULL, N'Английский язык. Фразовые глаголы', N'710083.jpg', NULL, 160, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (56, NULL, N'English for Beginners: Everyday English', N'693086.jpg', NULL, 330, NULL, NULL, NULL, NULL, 18, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (57, NULL, N'Курс английской разговорной речи. Учебное пособие', N'722820.jpg', NULL, 1790, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (58, NULL, N'New Enterprise A2 Student''s Book with DigiBooks App', N'701882.jpg', NULL, 1650, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (59, NULL, N'Business Vocabulary in Use. Advanced. Book with Answers and Enhanced ebook', N'700675.jpg', NULL, 2840, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (60, NULL, N'Prepare. Level 2. Student''s Book', N'701088.jpg', NULL, 1780, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (61, NULL, N'Your Space Level 2 Student''s Book', N'701151.jpg', NULL, 1380, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (62, NULL, N'Вся английская грамматика в схемах и таблицах', N'729025.jpg', NULL, 370, NULL, NULL, NULL, NULL, 17, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (63, NULL, N'Dive in! Green', N'729199.jpg', NULL, 640, NULL, NULL, NULL, NULL, 6, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (64, NULL, N'English Grammar Today Book with Workbook', N'700707.jpg', NULL, 4110, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (65, NULL, N'Разговорная грамматика английского языка', N'725306.jpg', NULL, 360, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (66, NULL, N'Think. Level 3. B1+. Workbook with Online Practice', N'701138.jpg', NULL, 1140, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (67, NULL, N'Английский язык за 3 месяца. Быстрый восстановитель знаний', N'714131.jpg', NULL, 270, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (68, NULL, N'Prepare. Level 4. B1. Student''s Book', N'701097.jpg', NULL, 1810, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (69, NULL, N'Английский язык. Идиомы (полезные карточки)', N'729857.jpg', NULL, 140, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (70, NULL, N'Английский язык. Все времена и глаголы в схемах и таблицах', N'729495.jpg', NULL, 350, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (71, NULL, N'Английский с нуля. Учебное пособие', N'716806.jpg', NULL, 1840, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (72, NULL, N'English Vocabulary in Use. Elementary. Book with Answers and Enhanced eBook', N'700704.jpg', NULL, 2380, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (73, NULL, N'Каллиграфия. Английский курсив. Самоучитель', N'721737.jpg', NULL, 270, NULL, NULL, NULL, NULL, 3, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (74, NULL, N'Ship or Sheep? An intermediate pronunciation course', N'701112.jpg', NULL, 2210, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (75, NULL, N'Eyes Open. Level 3. Workbook with Online Practice', N'700891.jpg', NULL, 1110, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (76, NULL, N'New Enterprise A2 - Grammar Book (with Digibooks App)', N'701883.jpg', NULL, 1250, NULL, NULL, NULL, NULL, 8, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (77, NULL, N'Cracking the GRE Premium Edition with 6 Practice Tests, 2020', N'730252.jpg', NULL, 3110, NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (78, NULL, N'Prepare. Level 5. B1. Student''s Book', N'701098.jpg', NULL, 1790, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (79, NULL, N'Английский язык для менеджеров. Учебное пособие', N'693032.jpg', NULL, 1280, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (80, NULL, N'Учебник английского языка. Часть 2', N'717996.jpg', NULL, 690, NULL, NULL, NULL, NULL, 36, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (81, NULL, N'Быстрый английский для начинающих', N'714137.jpg', NULL, 230, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (82, NULL, N'Prepare. Level 3. A2. Student''s Book', N'701094.jpg', NULL, 1810, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (83, NULL, N'Тренажер по чтению. Самый быстрый способ выучить английский язык', N'718058.jpg', NULL, 120, NULL, NULL, NULL, NULL, 17, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (84, NULL, N'English Vocabulary in Use. Upper-Intermediate. Book with Answers', N'700705.jpg', NULL, 1890, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (85, NULL, N'Professional English for PR Students: People and Society', N'716803.jpg', NULL, 780, NULL, NULL, NULL, NULL, 50, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (86, NULL, N'Английский язык. Идиомы', N'713805.jpg', NULL, 130, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (87, NULL, N'Elementary Vocabulary + Grammar. Foe Beginners and Pre-Intermediate Students. Учебное пособие', N'731489.jpg', NULL, 960, NULL, NULL, NULL, NULL, 24, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (88, NULL, N'Самый быстрый способ выучить неправильные английские глаголы', N'718057.jpg', NULL, 70, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (89, NULL, N'English Grammar in Use. Book without Answers', N'700691.jpg', NULL, 1760, NULL, NULL, NULL, NULL, 38, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (90, NULL, N'Английская грамматика. Самое важное. Учебное пособие (мини)', N'726085.jpg', NULL, 80, NULL, NULL, NULL, NULL, 7, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (91, NULL, N'Grammar in Use Intermediate Student''s Book with Answers Self-study Reference and Practice', N'700901.jpg', NULL, 1950, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (92, NULL, N'English Grammar in Use. Book with Answers', N'700689.jpg', NULL, 1950, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (93, NULL, N'Английский для малышей и мам @my_english_baby. Как воспитать билингвального ребенка', N'718408.jpg', NULL, 390, NULL, NULL, NULL, NULL, 17, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (94, NULL, N'Грамматический профиль. Grammar Profile. Учебное пособие', N'710904.jpg', NULL, 450, NULL, NULL, NULL, NULL, 47, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (95, NULL, N'Английский язык на пальцах', N'712495.jpg', NULL, 360, NULL, NULL, NULL, NULL, 17, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (96, NULL, N'Prepare. Level 2. A2. Workbook with Audio Download', N'701093.jpg', NULL, 1340, NULL, NULL, NULL, NULL, 38, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (97, NULL, N'Учебник английского языка. Часть 1', N'713136.jpg', NULL, 710, NULL, NULL, NULL, NULL, 36, 1)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (98, NULL, N'Грамматика английского языка. Просто и доступно. Учебное пособие', N'696499.jpg', NULL, 450, NULL, NULL, NULL, NULL, 47, 0)
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (99, NULL, N'Безупречный английский. Самоучитель для начинающих', N'727495.jpg', NULL, 680, NULL, NULL, NULL, NULL, 17, 1)
GO
INSERT [dbo].[Good] ([GoodId], [CategoryId], [GoodName], [MainPhoto], [SecondPhotos], [Price], [Weight], [Width], [Heigth], [Length], [DeveloperId], [Active]) VALUES (100, NULL, N'Your Space. Level 1. Student''s Book', N'701149.jpg', NULL, 1370, NULL, NULL, NULL, NULL, 38, 1)
SET IDENTITY_INSERT [dbo].[Good] OFF
GO
SET IDENTITY_INSERT [dbo].[Sell] ON 

INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (1, 92, 1, CAST(N'2019-10-13T18:32:07.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (2, 74, 1, CAST(N'2019-03-11T10:27:29.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (3, 90, 1, CAST(N'2019-08-10T12:07:36.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (4, 89, 1, CAST(N'2019-05-22T12:24:47.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (5, 46, 2, CAST(N'2019-02-09T11:35:40.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (6, 93, 2, CAST(N'2019-07-13T14:32:24.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (7, 20, 1, CAST(N'2019-05-26T17:13:18.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (8, 92, 1, CAST(N'2019-03-28T17:54:22.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (9, 37, 2, CAST(N'2019-10-22T18:55:53.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (10, 1, 2, CAST(N'2019-03-04T09:40:36.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (11, 51, 1, CAST(N'2019-09-17T19:38:39.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (12, 28, 2, CAST(N'2019-04-16T18:09:32.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (13, 24, 1, CAST(N'2019-05-10T12:22:42.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (14, 37, 2, CAST(N'2019-04-13T08:33:20.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (15, 21, 1, CAST(N'2019-01-31T14:42:16.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (16, 23, 3, CAST(N'2019-03-29T18:41:11.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (17, 45, 1, CAST(N'2019-08-18T14:30:13.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (18, 44, 2, CAST(N'2019-05-19T08:41:55.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (19, 54, 2, CAST(N'2019-03-30T19:10:48.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (20, 95, 1, CAST(N'2019-06-02T14:46:15.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (21, 20, 3, CAST(N'2019-07-05T08:24:15.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (22, 26, 2, CAST(N'2019-08-29T16:31:11.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (23, 38, 3, CAST(N'2019-03-06T11:18:08.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (24, 91, 3, CAST(N'2019-04-03T12:42:05.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (25, 69, 2, CAST(N'2019-02-21T13:28:29.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (26, 76, 1, CAST(N'2019-09-03T17:04:32.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (27, 70, 2, CAST(N'2019-09-26T12:19:46.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (28, 69, 3, CAST(N'2019-09-21T12:53:52.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (29, 15, 1, CAST(N'2019-01-04T08:12:33.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (30, 53, 2, CAST(N'2019-12-07T08:32:42.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (31, 58, 2, CAST(N'2019-06-20T10:54:48.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (32, 35, 1, CAST(N'2019-02-27T08:29:25.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (33, 82, 3, CAST(N'2019-03-02T19:18:48.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (34, 59, 1, CAST(N'2019-07-10T16:39:00.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (35, 65, 3, CAST(N'2019-11-01T19:54:54.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (36, 35, 2, CAST(N'2019-08-26T16:34:31.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (37, 73, 3, CAST(N'2019-08-06T13:00:27.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (38, 25, 2, CAST(N'2019-11-23T16:07:16.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (39, 58, 1, CAST(N'2019-10-15T14:11:24.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (40, 20, 3, CAST(N'2019-03-02T15:31:42.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (41, 99, 3, CAST(N'2019-02-10T14:04:05.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (42, 97, 1, CAST(N'2019-11-29T15:42:24.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (43, 17, 1, CAST(N'2019-07-23T14:24:10.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (44, 25, 2, CAST(N'2019-12-08T17:21:01.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (45, 97, 1, CAST(N'2019-04-09T16:06:23.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (46, 86, 2, CAST(N'2019-02-22T08:55:02.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (47, 76, 2, CAST(N'2019-08-17T11:37:30.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (48, 92, 3, CAST(N'2019-03-11T12:49:22.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (49, 16, 1, CAST(N'2019-03-19T10:57:38.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (50, 31, 1, CAST(N'2019-10-17T17:07:08.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (51, 89, 2, CAST(N'2019-11-26T13:02:13.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (52, 18, 3, CAST(N'2019-02-16T09:44:38.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (53, 20, 3, CAST(N'2019-12-31T17:19:38.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (54, 2, 1, CAST(N'2019-11-19T11:34:00.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (55, 48, 1, CAST(N'2019-09-13T16:55:09.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (56, 72, 2, CAST(N'2019-12-14T10:34:25.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (57, 58, 1, CAST(N'2019-05-20T17:49:34.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (58, 100, 2, CAST(N'2019-03-26T14:45:59.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (59, 57, 2, CAST(N'2019-09-14T19:44:46.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (60, 75, 1, CAST(N'2019-09-06T10:24:55.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (61, 61, 3, CAST(N'2019-05-09T13:33:22.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (62, 93, 2, CAST(N'2019-03-06T13:39:56.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (63, 17, 1, CAST(N'2019-03-29T08:40:19.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (64, 43, 2, CAST(N'2019-07-25T19:00:10.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (65, 3, 3, CAST(N'2019-10-13T09:57:09.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (66, 75, 3, CAST(N'2019-01-06T10:51:04.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (67, 2, 1, CAST(N'2019-04-10T14:04:35.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (68, 83, 1, CAST(N'2019-05-13T17:13:38.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (69, 73, 1, CAST(N'2019-07-25T16:06:16.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (70, 58, 2, CAST(N'2019-03-18T17:03:33.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (71, 21, 3, CAST(N'2019-01-05T13:50:53.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (72, 17, 2, CAST(N'2019-03-25T18:38:55.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (73, 6, 3, CAST(N'2019-08-13T18:20:29.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (74, 62, 2, CAST(N'2019-03-25T10:52:42.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (75, 45, 2, CAST(N'2019-02-18T08:40:43.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (76, 48, 3, CAST(N'2019-02-28T19:19:21.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (77, 65, 1, CAST(N'2019-06-28T15:42:50.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (78, 23, 3, CAST(N'2019-11-04T18:31:26.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (79, 79, 2, CAST(N'2019-11-09T14:55:07.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (80, 53, 2, CAST(N'2019-05-17T09:47:47.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (81, 74, 2, CAST(N'2019-05-29T15:34:54.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (82, 26, 1, CAST(N'2019-04-11T17:27:37.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (83, 69, 1, CAST(N'2019-04-15T11:50:19.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (84, 84, 1, CAST(N'2019-12-04T08:46:24.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (85, 60, 2, CAST(N'2019-02-04T09:53:35.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (86, 2, 3, CAST(N'2019-03-07T15:56:29.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (87, 67, 1, CAST(N'2019-03-04T16:01:38.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (88, 17, 1, CAST(N'2019-10-01T16:57:46.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (89, 72, 1, CAST(N'2019-05-23T10:20:58.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (90, 95, 1, CAST(N'2019-06-10T10:36:57.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (91, 50, 2, CAST(N'2019-04-24T09:16:41.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (92, 80, 2, CAST(N'2019-03-09T14:50:50.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (93, 93, 1, CAST(N'2019-06-09T19:44:58.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (94, 37, 3, CAST(N'2019-10-09T09:47:44.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (95, 84, 3, CAST(N'2019-07-29T08:20:37.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (96, 34, 2, CAST(N'2019-12-16T11:29:06.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (97, 50, 2, CAST(N'2019-08-28T10:57:04.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (98, 64, 2, CAST(N'2019-06-01T10:23:36.000' AS DateTime))
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (99, 37, 1, CAST(N'2019-02-04T19:48:02.000' AS DateTime))
GO
INSERT [dbo].[Sell] ([SellId], [GoodId], [Count], [DateSell]) VALUES (100, 76, 1, CAST(N'2019-10-13T15:39:35.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sell] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientType] FOREIGN KEY([ClientTypeId])
REFERENCES [dbo].[ClientType] ([ClientTypeId])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientType]
GO
ALTER TABLE [dbo].[Complect]  WITH CHECK ADD  CONSTRAINT [FK_Complect_Good] FOREIGN KEY([MainGoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Complect] CHECK CONSTRAINT [FK_Complect_Good]
GO
ALTER TABLE [dbo].[Complect]  WITH CHECK ADD  CONSTRAINT [FK_Complect_Good1] FOREIGN KEY([SecondGoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Complect] CHECK CONSTRAINT [FK_Complect_Good1]
GO
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Category]
GO
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Developer] FOREIGN KEY([DeveloperId])
REFERENCES [dbo].[Developer] ([DeveloperId])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Developer]
GO
ALTER TABLE [dbo].[SeasonGood]  WITH CHECK ADD  CONSTRAINT [FK_SeasonGood_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[SeasonGood] CHECK CONSTRAINT [FK_SeasonGood_Good]
GO
ALTER TABLE [dbo].[SeasonGood]  WITH CHECK ADD  CONSTRAINT [FK_SeasonGood_Season] FOREIGN KEY([SeasonId])
REFERENCES [dbo].[Season] ([SeasonId])
GO
ALTER TABLE [dbo].[SeasonGood] CHECK CONSTRAINT [FK_SeasonGood_Season]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Good]
GO
ALTER TABLE [dbo].[SellVisit]  WITH CHECK ADD  CONSTRAINT [FK_SellVisit_Sell] FOREIGN KEY([SellId])
REFERENCES [dbo].[Sell] ([SellId])
GO
ALTER TABLE [dbo].[SellVisit] CHECK CONSTRAINT [FK_SellVisit_Sell]
GO
ALTER TABLE [dbo].[SellVisit]  WITH CHECK ADD  CONSTRAINT [FK_SellVisit_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[SellVisit] CHECK CONSTRAINT [FK_SellVisit_Visit]
GO
ALTER TABLE [dbo].[ServiceShare]  WITH CHECK ADD  CONSTRAINT [FK_ServiceShare_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[ServiceShare] CHECK CONSTRAINT [FK_ServiceShare_Service]
GO
ALTER TABLE [dbo].[ServiceShare]  WITH CHECK ADD  CONSTRAINT [FK_ServiceShare_Share] FOREIGN KEY([ShareId])
REFERENCES [dbo].[Share] ([ShareId])
GO
ALTER TABLE [dbo].[ServiceShare] CHECK CONSTRAINT [FK_ServiceShare_Share]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Good] FOREIGN KEY([GoodId])
REFERENCES [dbo].[Good] ([GoodId])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Good]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Service]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Worker] FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Worker] ([WorkerId])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Worker]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Client]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_TimeSheet] FOREIGN KEY([TimeSheetId])
REFERENCES [dbo].[TimeSheet] ([TimeSheetId])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_TimeSheet]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Speciality] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[Speciality] ([SpecialityId])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Speciality]
GO
USE [master]
GO
ALTER DATABASE [DEMO_2020_1] SET  READ_WRITE 
GO
