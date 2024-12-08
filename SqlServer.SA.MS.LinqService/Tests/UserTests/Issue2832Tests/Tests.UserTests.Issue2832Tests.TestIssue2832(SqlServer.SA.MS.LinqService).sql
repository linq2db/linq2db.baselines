(503457) SELECT 
	t503457.Id = t503456.Id
FROM [DctSetpointtype(503456)] as t503456 (spt)
		LEFT JOIN (
			[VWellTree(503459)] as t503459 (t2)
				INNER JOIN [DctOu(503461)] as t503461 (tp2) ON ({t503459.ShopId?}? = {t503461.Id})
				LEFT JOIN [UacUsersDatagroup(503464)] as t503464 (cudg) ON ({t503461.Id} = {t503464.DatagroupId} AND {t503464.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503469)] as t503469 (oudg) ON ({t503461.ParentId?}? = {t503469.DatagroupId} AND {t503469.UserId} = 150 AND {t503469.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503489)] as t503489 (d) ON ({t503459.WellId?}? = {t503489.WellId})
		)  ON ({t503489.SetpointtypeId} = {t503456.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503464.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t503469.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
