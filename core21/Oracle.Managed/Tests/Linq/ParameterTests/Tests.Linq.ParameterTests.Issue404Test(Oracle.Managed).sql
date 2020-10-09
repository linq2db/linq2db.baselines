BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Table404One
(
	Id Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Table404One (Id) VALUES (1)
	INTO Table404One (Id) VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Table404Two
(
	Id           Int NOT NULL,
	Usage        Int NOT NULL,
	FirstTableId Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (1,0,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (2,0,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (3,1,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (4,0,2)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (5,1,2)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 0

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.Usage = :Usage_2 AND v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 1

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.Usage = :Usage_2 AND v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Table404Two

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Table404One

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Table404One
(
	Id Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Table404One (Id) VALUES (1)
	INTO Table404One (Id) VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE Table404Two
(
	Id           Int NOT NULL,
	Usage        Int NOT NULL,
	FirstTableId Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (1,0,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (2,0,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (3,1,1)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (4,0,2)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (5,1,2)
	INTO Table404Two (Id, Usage, FirstTableId) VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 0

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.Usage = :Usage_2 AND v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @Usage_2 Int32
SET     @Usage_2 = 1

SELECT 
	key_data_result.Id, 
	v.Id, 
	v.Usage, 
	v.FirstTableId
FROM
	( 
		SELECT DISTINCT 
			t1.Id
		FROM
			( 
				SELECT 
					c_1.Id
				FROM
					Table404One c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) key_data_result
		INNER JOIN Table404Two v ON v.Usage = :Usage_2 AND v.FirstTableId = key_data_result.Id

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT 
	c_1.Id
FROM
	Table404One c_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Table404Two

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE Table404One

