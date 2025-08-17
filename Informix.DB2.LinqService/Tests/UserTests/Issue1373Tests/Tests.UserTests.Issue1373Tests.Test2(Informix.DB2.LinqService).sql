BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Field1
FROM
	Issue1373Tests t1
ORDER BY
	t1.Id

