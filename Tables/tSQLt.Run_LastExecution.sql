SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[Run_LastExecution] (
		[TestName]      [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		[SessionId]     [int] NULL,
		[LoginTime]     [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Run_LastExecution] SET (LOCK_ESCALATION = TABLE)
GO
