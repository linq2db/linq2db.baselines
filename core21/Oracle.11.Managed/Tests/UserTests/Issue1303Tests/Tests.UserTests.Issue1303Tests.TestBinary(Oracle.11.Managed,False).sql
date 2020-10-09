BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue1303
(
	ID     Int     NOT NULL,
	Array  Raw(10)     NULL,
	Binary Raw(10)     NULL,

	CONSTRAINT PK_Issue1303 PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Array, 
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.ID = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Array_2 Blob -- Object
SET     @Array_2 = HEXTORAW('010203')
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Array, 
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Array = :Array_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Binary_2 Blob -- Object
SET     @Binary_2 = HEXTORAW('0405')
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Array, 
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Binary = :Binary_2 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Issue1303

