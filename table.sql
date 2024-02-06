USE [CarSales]
GO

/****** Object:  Table [dbo].[Car Sales]    Script Date: 06.02.2024 20:40:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Car Sales](
	[Car_id] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Customer_Name] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Annual_Income] [int] NOT NULL,
	[Dealer_Name] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Engine] [nvarchar](50) NOT NULL,
	[Transmission] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Dealer_No] [nvarchar](50) NOT NULL,
	[Body_Style] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Dealer_Region] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO