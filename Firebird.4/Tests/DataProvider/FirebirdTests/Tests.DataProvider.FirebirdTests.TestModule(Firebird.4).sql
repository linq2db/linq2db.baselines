﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = NULL

TEST_PROCEDURE

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = 4

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = 2

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TEST_FUNCTION(1)
FROM
	"Person" "p"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	"Person" "p"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	"Person" "p"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"r".O
FROM
	TEST_TABLE_FUNCTION(1) "r"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"r".O
FROM
	TEST_PACKAGE1.TEST_TABLE_FUNCTION(1) "r"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"r".O
FROM
	TEST_PACKAGE2.TEST_TABLE_FUNCTION(1) "r"
FETCH NEXT @take ROWS ONLY

