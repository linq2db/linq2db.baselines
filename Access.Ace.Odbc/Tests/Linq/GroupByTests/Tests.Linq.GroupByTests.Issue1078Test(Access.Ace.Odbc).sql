BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1078Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1078Table]
(
	[UserID] Int NOT NULL,
	[SiteID] Int NOT NULL,
	[Active] Bit NOT NULL,

	CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 1
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 2
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 3
DECLARE @SiteID Int -- Int32
SET     @SiteID = 1
DECLARE @Active Bit -- Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 4
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 5
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 6
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 7
DECLARE @SiteID Int -- Int32
SET     @SiteID = 2
DECLARE @Active Bit -- Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 8
DECLARE @SiteID Int -- Int32
SET     @SiteID = 3
DECLARE @Active Bit -- Boolean
SET     @Active = False

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserID Int -- Int32
SET     @UserID = 9
DECLARE @SiteID Int -- Int32
SET     @SiteID = 4
DECLARE @Active Bit -- Boolean
SET     @Active = True

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF(NOT [grp].[Active], 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1078Table]

