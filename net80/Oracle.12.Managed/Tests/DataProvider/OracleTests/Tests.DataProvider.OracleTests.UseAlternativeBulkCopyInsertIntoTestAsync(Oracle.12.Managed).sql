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
SET     @:p1 = {0,1,2,3,4,5,6,7}
-- value above truncated for logging
DECLARE @:p2 Int32
SET     @:p2 = {0,1,2,3,4,5,6,7}
-- value above truncated for logging

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {25,26,27,28,29,30,31,32}
-- value above truncated for logging
DECLARE @:p2 Int32
SET     @:p2 = {25,26,27,28,29,30,31,32}
-- value above truncated for logging

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {50,51,52,53,54,55,56,57}
-- value above truncated for logging
DECLARE @:p2 Int32
SET     @:p2 = {50,51,52,53,54,55,56,57}
-- value above truncated for logging

INSERT INTO "UseAlternativeBulkCopy" ("Id", "Value") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {75,76,77,78,79,80,81,82}
-- value above truncated for logging
DECLARE @:p2 Int32
SET     @:p2 = {75,76,77,78,79,80,81,82}
-- value above truncated for logging

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

