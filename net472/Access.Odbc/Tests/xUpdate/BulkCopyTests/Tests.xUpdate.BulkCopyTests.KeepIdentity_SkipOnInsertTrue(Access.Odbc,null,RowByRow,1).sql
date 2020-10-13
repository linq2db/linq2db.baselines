BeforeExecute
-- Access.Odbc AccessODBC

ALTER TABLE AllTypes ALTER COLUMN ID COUNTER(3, 1)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 200

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 300

INSERT INTO [AllTypes]
(
	[intDataType]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @lastId Int -- Int32
SET     @lastId = 3

SELECT 
	[_].[ID], 
	[_].[intDataType]
FROM
	[AllTypes] [_]
WHERE
	[_].[ID] > ?
ORDER BY
	[_].[ID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @lastId Int -- Int32
SET     @lastId = 3

DELETE FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= ?

