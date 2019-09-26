SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[TestResult] (
		[Id]                [int] IDENTITY(1, 1) NOT NULL,
		[Class]             [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
		[TestCase]          [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
		[Name]              AS ((quotename([Class])+'.')+quotename([TestCase])),
		[TranName]          [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
		[Result]            [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Msg]               [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		[TestStartTime]     [datetime] NOT NULL,
		[TestEndTime]       [datetime] NULL,
		CONSTRAINT [PK__TestResu__3214EC07F4372611]
		PRIMARY KEY
		CLUSTERED
		([Id])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[TestResult]
	ADD
	CONSTRAINT [DF:TestResult(TestStartTime)]
	DEFAULT (getdate()) FOR [TestStartTime]
GO
ALTER TABLE [tSQLt].[TestResult] SET (LOCK_ESCALATION = TABLE)
GO
