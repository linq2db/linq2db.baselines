﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @:p1 Int32
SET     @:p1 = {1}

INSERT INTO "SimpleBulkCopyTable" ("Id") VALUES (:p1)

