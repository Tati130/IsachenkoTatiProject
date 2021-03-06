USE [master]
GO
/****** Object:  Database [Isachenko]    Script Date: 12/18/2020 11:45:21 AM ******/
CREATE DATABASE [Isachenko]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Isachenko', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Isachenko.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Isachenko_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Isachenko_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Isachenko] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Isachenko].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Isachenko] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Isachenko] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Isachenko] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Isachenko] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Isachenko] SET ARITHABORT OFF 
GO
ALTER DATABASE [Isachenko] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Isachenko] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Isachenko] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Isachenko] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Isachenko] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Isachenko] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Isachenko] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Isachenko] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Isachenko] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Isachenko] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Isachenko] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Isachenko] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Isachenko] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Isachenko] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Isachenko] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Isachenko] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Isachenko] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Isachenko] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Isachenko] SET  MULTI_USER 
GO
ALTER DATABASE [Isachenko] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Isachenko] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Isachenko] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Isachenko] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Isachenko] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Isachenko] SET QUERY_STORE = OFF
GO
USE [Isachenko]
GO
/****** Object:  Table [dbo].[agent]    Script Date: 12/18/2020 11:45:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agent](
	[id_agent] [nchar](10) NOT NULL,
	[fist_name] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[middle_name] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[roles] [nchar](10) NULL,
	[login] [nvarchar](50) NULL,
	[password] [nchar](10) NULL,
 CONSTRAINT [PK_agent] PRIMARY KEY CLUSTERED 
(
	[id_agent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[applicant]    Script Date: 12/18/2020 11:45:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[applicant](
	[id_applicant] [nchar](10) NOT NULL,
	[fist_name] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[middle_name] [nvarchar](50) NOT NULL,
	[date_of_bth] [date] NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[edication] [nvarchar](50) NOT NULL,
	[post] [nvarchar](50) NOT NULL,
	[roles] [nchar](10) NULL,
	[login] [nvarchar](50) NULL,
	[password] [nchar](10) NULL,
 CONSTRAINT [PK_applicant] PRIMARY KEY CLUSTERED 
(
	[id_applicant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deals]    Script Date: 12/18/2020 11:45:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deals](
	[id_deals] [nchar](10) NOT NULL,
	[id_vacancy] [nchar](10) NOT NULL,
	[id_applicants] [nchar](10) NOT NULL,
	[id_agent] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_deals] PRIMARY KEY CLUSTERED 
(
	[id_deals] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 12/18/2020 11:45:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[id_employers] [nchar](10) NOT NULL,
	[name_organisation] [nvarchar](50) NULL,
	[type_of_activiti] [nvarchar](50) NULL,
	[adress] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[date] [date] NULL,
	[name_users] [nvarchar](50) NULL,
	[role] [nchar](10) NULL,
	[login] [nchar](10) NULL,
	[password] [nchar](10) NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[id_employers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/18/2020 11:45:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_roles] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vacancy]    Script Date: 12/18/2020 11:45:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vacancy](
	[id_vacancy] [nchar](10) NOT NULL,
	[date] [date] NOT NULL,
	[post] [nvarchar](50) NOT NULL,
	[edication] [nvarchar](50) NOT NULL,
	[languages] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[salary] [nvarchar](50) NOT NULL,
	[driving_license] [nvarchar](50) NOT NULL,
	[working_conditions] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_vacancy] PRIMARY KEY CLUSTERED 
(
	[id_vacancy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'1         ', N'Иванов ', N'Тарас', N'Иванович', N'12-32-41', N'3         ', N'ivan', N'19871     ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'10        ', N'Замурилов ', N'Павел', N'Павлович', N'32-87-15', N'3         ', N'pavel', N'9874      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'2         ', N'Петров ', N'Юрий ', N'Александрович ', N'98-74-12', N'3         ', N'alex', N'3215      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'3         ', N'Уфимцев ', N'Руслан ', N'Захарович ', N'77-14-58', N'3         ', N'rus', N'9654      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'4         ', N'Диминков ', N'Дмитрий ', N'Игоревич ', N'36-41-78', N'3         ', N'dmin', N'1111      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'5         ', N'Цифранов ', N'Илья ', N'Мирович ', N'35-78-10', N'3         ', N'ilya', N'1249      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'6         ', N'Шевченко ', N'Елена ', N'Борисовна ', N'98-74-12', N'3         ', N'elena', N'3697      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'7         ', N'Мальцева ', N'Лаура ', N'Прокоповна ', N'69-74-89', N'3         ', N'layra', N'3333      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'8         ', N'Гаврилов ', N'Никита ', N'Михайлович ', N'15-98-74', N'3         ', N'niki', N'9999      ')
INSERT [dbo].[agent] ([id_agent], [fist_name], [name], [middle_name], [phone], [roles], [login], [password]) VALUES (N'9         ', N'Курилов ', N'Кирилл ', N'Александрович ', N'32-89-41', N'3         ', N'kiril', N'3214      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'1         ', N'Владовалова ', N'Марина ', N'Ивановна ', CAST(N'1998-12-01' AS Date), N'женский ', N'Высшее', N'Программист ', N'1         ', N'marina', N'6411      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'10        ', N'Шеглов ', N'Шегол', N'Иванович ', CAST(N'1998-12-28' AS Date), N'мужской ', N'Среднее', N'Фермер ', N'1         ', N'shegol', N'3649      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'2         ', N'Иванцов', N'Роман ', N'Дмитриевич ', CAST(N'1997-05-03' AS Date), N'мужской ', N'Среднее специальное ', N'Техник ', N'1         ', N'roman', N'9871      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'3         ', N'Каравен', N'Тарас', N'Иванович ', CAST(N'1997-02-18' AS Date), N'мужской ', N'Высшее', N'Электрик', N'1         ', N'taras', N'1413      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'4         ', N'Амурова', N'Алена ', N'Дмитриевна ', CAST(N'1997-05-08' AS Date), N'женский ', N'Высшее', N'Бухгалтер ', N'1         ', N'ras', N'9994      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'5         ', N'Исарова', N'Ирина', N'Александровна', CAST(N'1994-05-09' AS Date), N'женский ', N'Среднее', N'Программис-инженер', N'1         ', N'otr', N'1987      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'6         ', N'Сатаров ', N'Мурат', N'Муратович', CAST(N'1998-07-06' AS Date), N'мужской ', N'Среднее', N'Веб-дизайнер ', N'1         ', N'myrat', N'1964      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'7         ', N'Ольматов ', N'Егор ', N'Дмитриевич', CAST(N'1994-02-07' AS Date), N'мужской ', N'Высшее', N'Инженер', N'1         ', N'egor', N'1977      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'8         ', N'Викторов', N'Виктор', N'Викторович', CAST(N'1998-08-08' AS Date), N'мужской ', N'Среднее', N'Машинист ', N'1         ', N'viki', N'1996      ')
INSERT [dbo].[applicant] ([id_applicant], [fist_name], [name], [middle_name], [date_of_bth], [gender], [edication], [post], [roles], [login], [password]) VALUES (N'9         ', N'Федотов ', N'Федор ', N'Франсович ', CAST(N'1994-07-06' AS Date), N'мужской ', N'Высшее', N'Водитель', N'1         ', N'fedot', NULL)
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'1         ', N'1         ', N'1         ', N'1         ', CAST(N'2020-12-03' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'10        ', N'10        ', N'10        ', N'10        ', CAST(N'2020-04-09' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'2         ', N'2         ', N'2         ', N'2         ', CAST(N'2020-12-09' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'3         ', N'3         ', N'3         ', N'4         ', CAST(N'2020-12-08' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'4         ', N'5         ', N'4         ', N'3         ', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'5         ', N'4         ', N'6         ', N'5         ', CAST(N'2020-12-08' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'6         ', N'7         ', N'5         ', N'6         ', CAST(N'2020-12-03' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'7         ', N'6         ', N'7         ', N'7         ', CAST(N'2020-12-01' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'8         ', N'8         ', N'8         ', N'9         ', CAST(N'2020-04-02' AS Date))
INSERT [dbo].[deals] ([id_deals], [id_vacancy], [id_applicants], [id_agent], [date]) VALUES (N'9         ', N'9         ', N'9         ', N'8         ', CAST(N'2020-08-09' AS Date))
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'1         ', N'ОО Иван ', N'Строительство ', N'Курск ', N'89-41-78', CAST(N'2020-12-20' AS Date), NULL, N'2         ', N'ivan      ', N'9784      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'10        ', N'ОА Ритм ', N'Гос. организация ', N'Новгород Великий ', N'19-74-34', CAST(N'2020-09-10' AS Date), NULL, N'2         ', N'ritm      ', N'7654      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'2         ', N'ОА Авант ', N'Горнодобывающая промышленность ', N'Магнитогорск ', N'65-78-12', CAST(N'2020-12-24' AS Date), NULL, N'2         ', N'avant     ', N'3464      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'3         ', N'ОО Импульс ', N'ЖКХ', N'Иваново ', N'32-98-74', CAST(N'2020-12-19' AS Date), NULL, N'2         ', N'impyls    ', N'4646      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'4         ', N'ОО Ирония ', N'Медицина ', N'Грачев ', N'98-74-12', CAST(N'2020-12-18' AS Date), NULL, N'2         ', N'irons     ', N'9797      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'5         ', N'ОО Грант', N'Нефть и газ ', N'Якутск ', N'32-98-74', CAST(N'2020-12-19' AS Date), NULL, N'2         ', N'grant     ', N'3179      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'6         ', N'ОА Новости ', N'Лесная промышленность ', N'Киров ', N'23-78-14', CAST(N'2020-12-03' AS Date), NULL, N'2         ', N'new       ', N'1364      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'7         ', N'ОО Вальс ', N'Перевозки ', N'Москва ', N'31-45-78', CAST(N'2020-12-04' AS Date), NULL, N'2         ', N'ymka      ', N'1324      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'8         ', N'ОО Умка ', N'Склад ', N'Москва ', N'12-54-78', CAST(N'2020-04-09' AS Date), NULL, N'2         ', N'vals      ', N'1367      ')
INSERT [dbo].[Employer] ([id_employers], [name_organisation], [type_of_activiti], [adress], [phone], [date], [name_users], [role], [login], [password]) VALUES (N'9         ', N'ОА Образ ', N'Образовательное учреждение ', N'Тула ', N'12-82-32', CAST(N'2020-07-06' AS Date), NULL, N'2         ', N'obras     ', N'3759      ')
INSERT [dbo].[Roles] ([id_roles], [name]) VALUES (N'1         ', N'applicant')
INSERT [dbo].[Roles] ([id_roles], [name]) VALUES (N'2         ', N'employer')
INSERT [dbo].[Roles] ([id_roles], [name]) VALUES (N'3         ', N'agent ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'1         ', CAST(N'2020-08-09' AS Date), N'Программист ', N'Среднее', N'Английский ', N'мужской ', N'25 000', N'да', N'Полный ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'2         ', CAST(N'2020-08-04' AS Date), N'Механик', N'Высшее', N'Русский ', N'мужской ', N'15 00 ', N'нет ', N'Вахта ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'3         ', CAST(N'2020-09-12' AS Date), N'Водитель ', N'Высшее', N'Английский ', N'мужской ', N'50 000 ', N'да ', N'Полный ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'4         ', CAST(N'2020-09-12' AS Date), N'Бухгалтер ', N'Среднее ', N'Английский ', N'женский ', N'12 000', N'нет ', N'Полный ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'5         ', CAST(N'2020-12-01' AS Date), N'Веб-дизайнер ', N'Среднее', N'Английский ', N'мужской ', N'50 000', N'нет ', N'Полный ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'6         ', CAST(N'2020-12-09' AS Date), N'Электрик ', N'Высшее', N'Русский ', N'мужской ', N'20 000', N'нет ', N'Полный ')
INSERT [dbo].[vacancy] ([id_vacancy], [date], [post], [edication], [languages], [gender], [salary], [driving_license], [working_conditions]) VALUES (N'7         ', CAST(N'2020-09-09' AS Date), N'Программист-техник ', N'Среднее', N'Английский ', N'мужской ', N'19 000 ', N'нет ', N'Удаленно ')
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Employer] FOREIGN KEY([id_roles])
REFERENCES [dbo].[Employer] ([id_employers])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Employer]
GO
USE [master]
GO
ALTER DATABASE [Isachenko] SET  READ_WRITE 
GO
