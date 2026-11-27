-- Access.Ace.Odbc AccessODBC
DECLARE @Has Bit -- Boolean
SET     @Has = True

INSERT INTO [FluentIdentityClient]
(
	[Has]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	@@IDENTITY

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Id],
	[t1].[Has]
FROM
	[FluentIdentityClient] [t1]
WHERE
	[t1].[Id] = ?

