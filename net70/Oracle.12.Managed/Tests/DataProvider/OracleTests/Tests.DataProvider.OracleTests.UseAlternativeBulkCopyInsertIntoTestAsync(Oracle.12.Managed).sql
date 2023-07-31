BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

CREATE TABLE "UseAlternativeBulkCopy"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}
DECLARE @:p2 Int32
SET     @:p2 = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49}
DECLARE @:p2 Int32
SET     @:p2 = {25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49}

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74}
DECLARE @:p2 Int32
SET     @:p2 = {50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74}

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}
DECLARE @:p2 Int32
SET     @:p2 = {75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Value"
FROM
	"UseAlternativeBulkCopy" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

DROP TABLE "UseAlternativeBulkCopy"

