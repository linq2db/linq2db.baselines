BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = {1,2,3,4,5,6,7,8}
-- value above truncated for logging
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = {'Name_1','Name_2','Name_3','Name_4','Name_5','Name_6','Name_7','Name_8'}
-- value above truncated for logging

INSERT INTO "Issue2342Entity" ("Id", "Name") VALUES (:p1, :p2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "Issue2342Entity"

