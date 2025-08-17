BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO Issue1622Table
(
	Id,
	SomeText
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.SomeText = 'Value1_suffix'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	e.Id,
	e.SomeText
FROM
	Issue1622Table e
WHERE
	e.Id = 1

