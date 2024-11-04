BeforeExecute
-- Access.Ace.Odbc AccessODBC

ALTER TABLE AllTypes ALTER COLUMN ID COUNTER(3, 1)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @lastId  -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= ?

