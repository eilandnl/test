SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[Private_AssertEqualsTableSchema_Actual] (
		[name]                [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
		[RANK(column_id)]     [int] NULL,
		[system_type_id]      [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		[user_type_id]        [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
		[max_length]          [smallint] NULL,
		[precision]           [tinyint] NULL,
		[scale]               [tinyint] NULL,
		[collation_name]      [nvarchar](256) COLLATE Latin1_General_CI_AS NULL,
		[is_nullable]         [bit] NULL,
		[is_identity]         [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_AssertEqualsTableSchema_Actual] SET (LOCK_ESCALATION = TABLE)
GO
