﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

BeforeExecute
INSERT BULK pgtimestamptest(id, updatedon)

