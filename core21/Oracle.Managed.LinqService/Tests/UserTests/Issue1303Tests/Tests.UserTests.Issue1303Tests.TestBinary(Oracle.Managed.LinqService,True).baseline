BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Issue1303
(
	ID     Int     NOT NULL,
	Array  Raw(10)     NULL,
	Binary Raw(10)     NULL,

	CONSTRAINT PK_Issue1303 PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Array_1 Blob -- Object
SET     @Array_1 = HEXTORAW('010203')
DECLARE @Binary_1 Blob -- Object
SET     @Binary_1 = HEXTORAW('0405')

INSERT INTO Issue1303
(
	ID,
	Array,
	Binary
)
VALUES
(
	1,
	:Array_1,
	:Binary_1
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.ID = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Array = HEXTORAW('010203')
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Binary = HEXTORAW('0405')
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Issue1303

