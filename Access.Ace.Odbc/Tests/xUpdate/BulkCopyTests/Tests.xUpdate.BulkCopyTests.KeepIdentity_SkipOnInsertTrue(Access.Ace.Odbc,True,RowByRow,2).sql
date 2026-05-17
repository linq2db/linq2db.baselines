-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT @@IDENTITY

-- Access.Ace.Odbc AccessODBC
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= ?

