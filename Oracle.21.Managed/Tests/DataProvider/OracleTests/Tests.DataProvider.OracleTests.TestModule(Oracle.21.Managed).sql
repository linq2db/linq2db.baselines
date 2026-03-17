-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = NULL

TEST_PROCEDURE

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = 4

TEST_PACKAGE1.TEST_PROCEDURE

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = 2

TEST_PACKAGE2.TEST_PROCEDURE

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TEST_FUNCTION(1) as "c1"
FROM
	"Person" p
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1) as "c1"
FROM
	"Person" p
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1) as "c1"
FROM
	"Person" p
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	r.O
FROM
	TEST_TABLE_FUNCTION(:p) r
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	r.O
FROM
	TEST_PACKAGE1.TEST_TABLE_FUNCTION(:p) r
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	r.O
FROM
	TEST_PACKAGE2.TEST_TABLE_FUNCTION(:p) r
FETCH NEXT 1 ROWS ONLY

