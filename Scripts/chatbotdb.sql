USE [master]
GO
/****** Object:  Database [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF]    Script Date: 21/08/2021 14:47:39 ******/
CREATE DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChatbotDB', FILENAME = N'C:\Users\Kalit\OneDrive\Documents\projectsVS\App_Data\ChatbotDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChatbotDB_log', FILENAME = N'C:\Users\Kalit\OneDrive\Documents\projectsVS\App_Data\ChatbotDB_log.ldf' , SIZE = 504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET QUERY_STORE = OFF
GO
USE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 21/08/2021 14:47:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserRequest] [nvarchar](300) NOT NULL,
	[BotResponse] [nvarchar](2000) NOT NULL,
	[NextIDs] [nvarchar](20) NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chats] ON 

INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (1, N'Поехали!', N'Отлично! Для начала выберите категорию:', N'2,3')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (2, N'ГЛАВНАЯ ИНФОРМАЦИЯ', N' ', N'8,9,10,11')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (3, N'УЗНАТЬ БОЛЬШЕ', N' ', N'4,5,7')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (4, N'Что обычно регистрируется в сфере IT?', N'Веб-сайты, веб-приложения, базы данных.', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (5, N'Для чего нужна защита авторского права?', N'ЗАП необходима для предотвращения попадание защищенного авторским правом материала в чужие руки, а также его использования без ведома и согласия автора.', N'6')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (6, N'Какие преимущества дает мне защита авторского права?', N'<ol>
<li>Устанавливается <b>презумпция правообладания</b> — регистрация авторских прав на произведение ставит обладателя прав в привилегированное положение по отношению ко всем другим лицам. Потенциальный ответчик (нарушитель) не сможет в суде оспорить существование авторских прав истца. См.: Свод законов США, титул 17, ст. 410©.</li>
<li>Устанавливается презумпция того, что <b>работа защищена авторским правом</b> и все третьи лица предупреждены об ответственности за незаконное (несанкционированное) использование данного объекта интеллектуальной собственности.</li>
<li>Становится возможным <b>взыскание штрафов</b>, предусмотренных законодательством (размер которых в отличие от убытков не требует доказывания).</li>
<li><b>Размер компенсации</b>, присуждаемый за нарушения прав на зарегистрированные произведения, в несколько раз выше (иногда более чем в 10 раз), чем штраф, присуждаемый за незарегистрированные произведения.</li>
<li>Возможным становится предъявление к ответчику требования о возмещении расходов, связанных с оплатой юридических услуг, которые обычно составляют значительную часть от убытков и расходов, связанных с нарушением.</li>
<li>Депонирование экземпляра авторского произведения делает возможным <b>«фиксацию» объекта авторского права</b> и избавляет от необходимости предварительной регистрации экземпляров произведений в суде до подачи иска о нарушении авторских прав (по законодательству некоторых штатов).</li>
<li>До судебного разбирательства Вы сможете обратиться в суд с просьбой вынести предварительное постановление о запрете несанкционированного использования - «судебный запрет» (Injunction), который является отдаленным американским аналогом российской «меры по обеспечению иска».</li>
</ol>', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (7, N'Когда начинает действовать авторское право на мою работу?', N'С момента ее создания.', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (8, N'Могу ли я воспользоваться ЗАП в США?', N'Да, и мы даже рекомендуем это сделать.', N'12,16,18')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (9, N'Куда обращаться для ЗАП?', N'В Бюро авторского права США(The U.S. Copyright Office) при Библиотеке Конгресса США.<br/> <a href="https://copyright.gov">copyright.gov</a><br/> 
Патентное бюро GPG, способного предоставить квалифицированные услуги 
копирайта и депонирования через регистрацию авторского права в библиотеке конгресса:
<ul>
<li>Программного обеспечения</li>
<li>Рисунки, чертежи</li>
<li>Литературные произведения</li>
</ul>', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (10, N'О заявке на регистрацию ', N'Отличный вопрос! Пожалуйста, выберите категорию.', N'19,20,21,22')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (11, N'Как я узнаю, что мое произведение зарегистрировано?', N'Выдается официальный сертификат библиотеки конгресса США Copyright Office of the Library of Congress и подписью специально уполномоченного должностного лица США.', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (12, N'Узнать как ', N'Нужно оставить заявку на регистрацию в электронном варианте в библиотеке конгресса США. ', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (16, N'Зачем оформлять защиту авторского права в США, у себя дома этого не достаточно?', N'Эта регистрация будет очень полезна, если Вы планируете использовать Ваше произведение за рубежом или если Вы опасаетесь, что принадлежащие Вам авторские права будут нарушены за пределами Вашего государства. При регистрации осуществляется депонирование одного экземпляра Вашего произведения, который правительство США обязуется хранить в течение всего срока действия авторского права.<b> Депонирование в библиотеку конгресса США способно дать самые надёжные гарантии, позволяющие при любых обстоятельствах обеспечить соблюдение авторских прав.</b>', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (18, N'Совпадают ли условия защиты авторского права в США и у нас?', N'Положения авторского права в США несколько отличаются от закрепленных белорусским законодательством. Правовая система США особенно благоприятствует тем, кто предпринял предварительные действия по защите своих авторских прав — осуществил регистрацию своих авторских прав.', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (19, N'Что нужно для подачи заявки?', N'<ul> <li>Данные об авторе (авторах);</li> <li>названия произведения; </li> <li>копия в электронном виде.</li>
', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (20, N'Как мне оставить заявку?', N'<ul>
<li>Заполнить заявление на сайте Библиотеки Конгресса США на английском языке <a href="https://www.copyright.gov/forms">copyright.gov/forms</a>,</li>
<li>подготовить и пересылать произведения в электронной форме в Библиотеку Конгресса США,</li>
<li>оплатить госпошлину,</li>
<li>решить вопросы по регистрации с копирайт-офисом Библиотеки Конгресса США.</li>
</ul>', N'24')
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (21, N'Какие есть ограничения?', N'Критерии приемлемости
<ol>
<li> Все работы должны быть не опубликованы.</li>
<li> Вы можете подать не более 10 работ.
<b>Пример:</b> 10 стихотворений или 8 рисунков или 4 песни</li>
<li> Вы должны представить одинаковые типы работ (например, группу песен или группу рисунков).
<b>Пример:</b> это приложение можно использовать для регистрации 10 стихотворений, но нельзя использовать для регистрации 1 стихотворения, 1 песни, 1 видео и 1 рисунка.</li>
<li> Все работы должны быть созданы одним и тем же автором или одними и теми же соавторами, а автор и заявитель для каждой работы должны быть одним и тем же лицом или организацией.</li>
<li> Вы должны указать отдельное название для каждой работы.</li>
<li> Вы должны загрузить цифровую копию каждой работы.</li>
<li> Имя файла для каждой работы должно соответствовать названию, которое вы указываете в заявке.</li>
</ol>', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (22, N'С какими трудностями я могу столкнуться?', N'<ul>
<li>Подготовка и заполнение заявки;</li>
<li>пошлина 65 долларов США;</li>
<li>продолжительное время рассмотрения заявки 6−10 месяцев.</li>
</ul>', NULL)
INSERT [dbo].[Chats] ([Id], [UserRequest], [BotResponse], [NextIDs]) VALUES (24, N'Цена за регистрацию?', N'Общая цена за регистрацию составит 65 долларов США.', NULL)
SET IDENTITY_INSERT [dbo].[Chats] OFF
GO
USE [master]
GO
ALTER DATABASE [C:\USERS\KALIT\ONEDRIVE\DOCUMENTS\PROJECTSVS\APP_DATA\CHATBOTDB.MDF] SET  READ_WRITE 
GO
