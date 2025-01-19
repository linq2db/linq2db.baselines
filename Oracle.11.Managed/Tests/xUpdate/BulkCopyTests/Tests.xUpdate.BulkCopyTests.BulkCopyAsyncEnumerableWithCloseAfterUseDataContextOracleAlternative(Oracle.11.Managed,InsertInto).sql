BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {2}

INSERT INTO "SimpleBulkCopyTable" ("Id") VALUES (:p1)

