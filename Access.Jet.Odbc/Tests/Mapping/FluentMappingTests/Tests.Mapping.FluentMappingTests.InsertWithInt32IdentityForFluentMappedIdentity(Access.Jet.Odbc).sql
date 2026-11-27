-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	@@IDENTITY

-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Id],
	[t1].[Has]
FROM
	[FluentIdentityClient] [t1]
WHERE
	[t1].[Id] = ?

