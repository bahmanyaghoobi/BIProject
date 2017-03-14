USE [BIProject]
GO

/****** Object:  Table [dbo].[DimCountry]    Script Date: 2017-03-13 10:22:37 PM ******/
DROP TABLE [dbo].[DimCountry]
GO

/****** Object:  Table [dbo].[DimCountry]    Script Date: 2017-03-13 10:22:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCountry](
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimCountry] PRIMARY KEY CLUSTERED 
(
	[CountryRegionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimCreditCard]    Script Date: 2017-03-13 10:22:45 PM ******/
DROP TABLE [dbo].[DimCreditCard]
GO

/****** Object:  Table [dbo].[DimCreditCard]    Script Date: 2017-03-13 10:22:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCreditCard](
	[CreditCardID] [int] NOT NULL,
	[CardType] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimCreditCard] PRIMARY KEY CLUSTERED 
(
	[CreditCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimCustomer]    Script Date: 2017-03-13 10:23:30 PM ******/
DROP TABLE [dbo].[DimCustomer]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 2017-03-13 10:23:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerID] [int] NOT NULL,
	[StoreID] [int] NULL,
	[TerritoryID] [int] NULL,
 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimSalesPerson]    Script Date: 2017-03-13 10:23:45 PM ******/
DROP TABLE [dbo].[DimSalesPerson]
GO

/****** Object:  Table [dbo].[DimSalesPerson]    Script Date: 2017-03-13 10:23:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSalesPerson](
	[SalesPersonID] [int] NULL,
	[SalesQuota] [money] NULL,
	[Bonus] [money] NULL,
	[CommissionPct] [decimal](18, 3) NULL,
	[SalesYTD] [money] NULL,
	[SalesLastYear] [money] NULL,
	[TerritoryID] [int] NULL
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimSalesReason]    Script Date: 2017-03-13 10:24:00 PM ******/
DROP TABLE [dbo].[DimSalesReason]
GO

/****** Object:  Table [dbo].[DimSalesReason]    Script Date: 2017-03-13 10:24:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSalesReason](
	[SalesReasonID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ReasonType] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimSalesReason] PRIMARY KEY CLUSTERED 
(
	[SalesReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimShipmentmethod]    Script Date: 2017-03-13 10:24:22 PM ******/
DROP TABLE [dbo].[DimShipmentmethod]
GO

/****** Object:  Table [dbo].[DimShipmentmethod]    Script Date: 2017-03-13 10:24:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimShipmentmethod](
	[ShipMethodID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimShipmentmethod] PRIMARY KEY CLUSTERED 
(
	[ShipMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[DimTerritory]    Script Date: 2017-03-13 10:24:40 PM ******/
DROP TABLE [dbo].[DimTerritory]
GO

/****** Object:  Table [dbo].[DimTerritory]    Script Date: 2017-03-13 10:24:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTerritory](
	[TerritoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Group] [nvarchar](50) NULL,
	[SalesYTD] [money] NULL,
	[SalesLastYear] [money] NULL,
	[CountryRegionCode] [nvarchar](3) NULL,
 CONSTRAINT [PK_DimTerritory] PRIMARY KEY CLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO





/****** Object:  Table [dbo].[Fact]    Script Date: 2017-03-13 10:25:41 PM ******/
DROP TABLE [dbo].[SalesFact]
GO

/****** Object:  Table [dbo].[Fact]    Script Date: 2017-03-13 10:25:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalesFact](
	[Sales] [money] NULL,
	[Tax] [money] NULL,
	[Freight] [money] NULL,
	[SalesDate] [datetime] NOT NULL,
	[SalesPersonID] [int] NULL,
	[CustomerID] [int] NULL,
	[SalesReasonID] [int] NULL,
	[ShipMethodID] [int] NULL,
	[CreditCardID] [int] NULL
) ON [PRIMARY]