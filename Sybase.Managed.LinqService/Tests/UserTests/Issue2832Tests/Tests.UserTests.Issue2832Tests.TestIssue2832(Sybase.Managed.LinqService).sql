(157138) SELECT 
	t157138.Id = t157137.Id
FROM [DctSetpointtype(157137)] as t157137 (spt)
		LEFT JOIN (
			[VWellTree(157140)] as t157140 (t2)
				INNER JOIN [DctOu(157142)] as t157142 (tp2) ON ({t157140.ShopId?}? = {t157142.Id})
				LEFT JOIN [UacUsersDatagroup(157145)] as t157145 (cudg) ON ({t157142.Id} = {t157145.DatagroupId} AND {t157145.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157150)] as t157150 (oudg) ON ({t157142.ParentId?}? = {t157150.DatagroupId} AND {t157150.UserId} = 150 AND {t157150.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157170)] as t157170 (d) ON ({t157140.WellId?}? = {t157170.WellId})
		)  ON ({t157170.SetpointtypeId} = {t157137.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157145.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t157150.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
