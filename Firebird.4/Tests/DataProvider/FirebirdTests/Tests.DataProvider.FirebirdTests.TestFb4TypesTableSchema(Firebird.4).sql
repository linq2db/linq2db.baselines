﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestFbTypesTable"
			(
				"Id"         Int                      NOT NULL,
				"DecFloat16" DECFLOAT(16),
				"DecFloat30" DECFLOAT,
				"DecFloat34" DECFLOAT,
				"DecFloat"   DECFLOAT,
				"DateTimeTZ" TIMESTAMP WITH TIME ZONE,
				"TimeTZ"     TIME WITH TIME ZONE,
				"Int128"     INT128,

				CONSTRAINT "PK_TestFbTypesTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p1 Dec34(16, 0) -- Object
SET     @p1 = 1234567890123456E5
DECLARE @p2 Dec34(30, 0) -- Object
SET     @p2 = 1234567890123456789012345678901234E15
DECLARE @p3 Dec34(34, 0) -- Object
SET     @p3 = 1234567890123456789012345678901235E15
DECLARE @p4 Dec34 -- Object
SET     @p4 = 1234567890123456789012345678901236E15
DECLARE @p5 TimeStampTZ -- Object
SET     @p5 = 02/29/2020 17:54:55 UTC
DECLARE @p6 TimeTZ -- Object
SET     @p6 = 17:54:55.1231234 UTC

INSERT INTO "TestFbTypesTable"
(
	"Id",
	"DecFloat16",
	"DecFloat30",
	"DecFloat34",
	"DecFloat",
	"DateTimeTZ",
	"TimeTZ",
	"Int128"
)
SELECT 1,CAST(@p1 AS DECFLOAT(16)),CAST(@p2 AS DECFLOAT),CAST(@p3 AS DECFLOAT),CAST(@p4 AS DECFLOAT),CAST(@p5 AS TIMESTAMP WITH TIME ZONE),CAST(@p6 AS TIME WITH TIME ZONE),-170141183460469231731687303715884105728 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

