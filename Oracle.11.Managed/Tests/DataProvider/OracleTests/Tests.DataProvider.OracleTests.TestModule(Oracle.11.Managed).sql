﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = NULL

TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = 4

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @I Int32
SET     @I = 1
DECLARE @O Int32
SET     @O = 2

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_FUNCTION(1)
FROM
	"Person" p
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	"Person" p
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	"Person" p
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	r.O
FROM
	TABLE(TEST_TABLE_FUNCTION(1)) r
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	r.O
FROM
	TABLE(TEST_PACKAGE1.TEST_TABLE_FUNCTION(1)) r
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	r.O
FROM
	TABLE(TEST_PACKAGE2.TEST_TABLE_FUNCTION(1)) r
WHERE
	ROWNUM <= :take

