BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue1373Tests
(
	Id     Int          NOT NULL,
	Field1 VarChar(255)     NULL,

	CONSTRAINT PK_Issue1373Tests PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field1 NVarchar2 -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field1 NVarchar2 -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 NVarchar2(4) -- String
SET     @Field1 = 'test'

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	:Id,
	:Field1
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Id, 
	t1.Field1
FROM
	Issue1373Tests t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue1373Tests

