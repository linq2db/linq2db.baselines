﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1078Table]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1078Table]
(
	[UserID] Int NOT NULL,
	[SiteID] Int NOT NULL,
	[Active] Bit NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 3
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb
DECLARE @UserID Integer -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 4
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[grp].[SiteID],
	Count(*),
	Count(IIF(IIF([grp].[Active], 1, 0) = 0, 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1078Table]

