-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

