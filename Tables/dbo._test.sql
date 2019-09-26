SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_test] (
		[Account ID 18]                             [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Account Name]                              [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Last Modified Date]                        [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Competitor Fleet: Competitor Fleet ID]     [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Competitor: Account Name]                  [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Car Competitor Fleet]                      [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Van Competitor Fleet]                      [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Truck Competitor Fleet]                    [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[Competitor Fleet: Last Modified Date]      [varchar](max) COLLATE Latin1_General_CI_AS NULL,
		[CI_BronBestand]                            [varchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[_test] SET (LOCK_ESCALATION = TABLE)
GO
