/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [CinemaPlusDB]
GO
/****** Object:  Table [dbo].[Contries]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contries](
	[ind] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contries] PRIMARY KEY CLUSTERED 
(
	[ind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmContries]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmContries](
	[id] [int] NOT NULL,
	[filmID] [int] NOT NULL,
	[coutryID] [int] NOT NULL,
 CONSTRAINT [PK_FilmContries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmGenre]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmGenre](
	[id] [int] NOT NULL,
	[filmID] [int] NOT NULL,
	[genreID] [int] NOT NULL,
 CONSTRAINT [PK_FilmGenre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Films]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Films](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[duration] [int] NOT NULL,
	[year] [int] NOT NULL,
	[about] [ntext] NOT NULL,
 CONSTRAINT [PK_Films] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Halls]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Halls](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Halls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] NOT NULL,
	[posterID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[actionDate] [datetime] NOT NULL,
	[price] [money] NOT NULL,
	[seatID] [int] NOT NULL,
	[collumn] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posters]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posters](
	[id] [int] NOT NULL,
	[filmID] [int] NOT NULL,
	[hallID] [int] NOT NULL,
	[price] [money] NOT NULL,
	[time] [time](7) NOT NULL,
	[premiereDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
 CONSTRAINT [PK_Posters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seats]    Script Date: 6/7/2018 5:34:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seats](
	[id] [int] NOT NULL,
	[haallID] [int] NOT NULL,
	[row] [nvarchar](50) NULL,
	[collumns] [int] NULL,
 CONSTRAINT [PK_Seats] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contries] ([ind], [name]) VALUES (1, N'Afrika')
INSERT [dbo].[Contries] ([ind], [name]) VALUES (2, N'Amerika')
INSERT [dbo].[Contries] ([ind], [name]) VALUES (3, N'Madakaskar')
INSERT [dbo].[Films] ([id], [name], [duration], [year], [about]) VALUES (1, N'Cingo', 99, 2018, N'bomba kinodu')
INSERT [dbo].[Films] ([id], [name], [duration], [year], [about]) VALUES (2, N'Buz dovru', 115, 2016, N'baxmaq olar')
INSERT [dbo].[Genres] ([id], [name]) VALUES (1, N'Fantastika')
INSERT [dbo].[Genres] ([id], [name]) VALUES (2, N'Melodram')
INSERT [dbo].[Genres] ([id], [name]) VALUES (3, N'Komediya')
INSERT [dbo].[Genres] ([id], [name]) VALUES (4, N'Kriminal')
INSERT [dbo].[Halls] ([id], [name]) VALUES (1, N'Zal-1')
INSERT [dbo].[Halls] ([id], [name]) VALUES (2, N'Zal-2')
INSERT [dbo].[Halls] ([id], [name]) VALUES (3, N'Zall-3')
INSERT [dbo].[Orders] ([id], [posterID], [date], [actionDate], [price], [seatID], [collumn]) VALUES (1, 1, CAST(N'2018-08-06' AS Date), CAST(N'2018-09-06T00:00:00.000' AS DateTime), 7.0000, 1, 1)
INSERT [dbo].[Posters] ([id], [filmID], [hallID], [price], [time], [premiereDate], [endDate]) VALUES (1, 1, 1, 7.0000, CAST(N'01:34:00' AS Time), CAST(N'2018-08-06' AS Date), CAST(N'2018-08-28' AS Date))
INSERT [dbo].[Posters] ([id], [filmID], [hallID], [price], [time], [premiereDate], [endDate]) VALUES (2, 2, 2, 8.0000, CAST(N'01:40:00' AS Time), CAST(N'2018-08-10' AS Date), CAST(N'2018-08-29' AS Date))
INSERT [dbo].[Seats] ([id], [haallID], [row], [collumns]) VALUES (1, 1, N'1', 1)
INSERT [dbo].[Seats] ([id], [haallID], [row], [collumns]) VALUES (2, 1, N'2', 1)
ALTER TABLE [dbo].[FilmContries]  WITH CHECK ADD  CONSTRAINT [FK_FilmContries_Contries] FOREIGN KEY([coutryID])
REFERENCES [dbo].[Contries] ([ind])
GO
ALTER TABLE [dbo].[FilmContries] CHECK CONSTRAINT [FK_FilmContries_Contries]
GO
ALTER TABLE [dbo].[FilmContries]  WITH CHECK ADD  CONSTRAINT [FK_FilmContries_Films] FOREIGN KEY([filmID])
REFERENCES [dbo].[Films] ([id])
GO
ALTER TABLE [dbo].[FilmContries] CHECK CONSTRAINT [FK_FilmContries_Films]
GO
ALTER TABLE [dbo].[FilmGenre]  WITH CHECK ADD  CONSTRAINT [FK_FilmGenre_Films] FOREIGN KEY([filmID])
REFERENCES [dbo].[Films] ([id])
GO
ALTER TABLE [dbo].[FilmGenre] CHECK CONSTRAINT [FK_FilmGenre_Films]
GO
ALTER TABLE [dbo].[FilmGenre]  WITH CHECK ADD  CONSTRAINT [FK_FilmGenre_Genres] FOREIGN KEY([genreID])
REFERENCES [dbo].[Genres] ([id])
GO
ALTER TABLE [dbo].[FilmGenre] CHECK CONSTRAINT [FK_FilmGenre_Genres]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Posters] FOREIGN KEY([seatID])
REFERENCES [dbo].[Seats] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Posters]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Posters1] FOREIGN KEY([posterID])
REFERENCES [dbo].[Posters] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Posters1]
GO
ALTER TABLE [dbo].[Posters]  WITH CHECK ADD  CONSTRAINT [FK_Posters_Films] FOREIGN KEY([filmID])
REFERENCES [dbo].[Films] ([id])
GO
ALTER TABLE [dbo].[Posters] CHECK CONSTRAINT [FK_Posters_Films]
GO
ALTER TABLE [dbo].[Posters]  WITH CHECK ADD  CONSTRAINT [FK_Posters_Halls] FOREIGN KEY([hallID])
REFERENCES [dbo].[Halls] ([id])
GO
ALTER TABLE [dbo].[Posters] CHECK CONSTRAINT [FK_Posters_Halls]
GO
ALTER TABLE [dbo].[Posters]  WITH CHECK ADD  CONSTRAINT [FK_Posters_Halls1] FOREIGN KEY([hallID])
REFERENCES [dbo].[Halls] ([id])
GO
ALTER TABLE [dbo].[Posters] CHECK CONSTRAINT [FK_Posters_Halls1]
GO
