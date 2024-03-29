SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[CaptureOutputLog] (
		[Id]             [int] IDENTITY(1, 1) NOT NULL,
		[OutputText]     [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		CONSTRAINT [PK__CaptureO__3214EC07629C9FEC]
		PRIMARY KEY
		CLUSTERED
		([Id])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[CaptureOutputLog] SET (LOCK_ESCALATION = TABLE)
GO
