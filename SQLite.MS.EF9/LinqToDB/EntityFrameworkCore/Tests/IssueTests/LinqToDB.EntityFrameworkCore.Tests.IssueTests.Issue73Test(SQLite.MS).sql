SELECT COALESCE("i0"."Name", '') || '>' || "i"."Name"
FROM "Issue73Entities" AS "i"
LEFT JOIN "Issue73Entities" AS "i0" ON "i"."ParentId" = "i0"."Id"
WHERE "i"."Name" = 'Name1_3'


