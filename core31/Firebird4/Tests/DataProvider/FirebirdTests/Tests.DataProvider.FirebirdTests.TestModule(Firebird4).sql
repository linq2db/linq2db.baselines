﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = NULL

TEST_PROCEDURE

BeforeExecute
-- Firebird4 Firebird
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = 4

TEST_PACKAGE1.TEST_PROCEDURE

BeforeExecute
-- Firebird4 Firebird
DECLARE @I Integer -- Int32
SET     @I = 1
DECLARE @O Integer -- Int32
SET     @O = 2

TEST_PACKAGE2.TEST_PROCEDURE

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	TEST_FUNCTION(1)
FROM
	"Person" "p"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	TEST_PACKAGE1.TEST_FUNCTION(1)
FROM
	"Person" "p"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	TEST_PACKAGE2.TEST_FUNCTION(1)
FROM
	"Person" "p"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"r".O
FROM
	TEST_TABLE_FUNCTION(1) "r"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"r".O
FROM
	TEST_PACKAGE1.TEST_TABLE_FUNCTION(1) "r"

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"r".O
FROM
	TEST_PACKAGE2.TEST_TABLE_FUNCTION(1) "r"

