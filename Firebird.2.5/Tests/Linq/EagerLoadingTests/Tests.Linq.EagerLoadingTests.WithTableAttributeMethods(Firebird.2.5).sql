﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserIssue3128')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserIssue3128"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserIssue3128')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UserIssue3128"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDetailsIssue3128')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserDetailsIssue3128"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDetailsIssue3128')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "UserDetailsIssue3128"
			(
				"UserId" Int NOT NULL,
				"Age"    Int NOT NULL,

				CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	CAST(@UserId AS Int),
	CAST(@Age AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"UserIssue3128" "t1"
	) > 0

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserDetailsIssue3128')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserDetailsIssue3128"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'UserIssue3128')) THEN
		EXECUTE STATEMENT 'DROP TABLE "UserIssue3128"';
END

