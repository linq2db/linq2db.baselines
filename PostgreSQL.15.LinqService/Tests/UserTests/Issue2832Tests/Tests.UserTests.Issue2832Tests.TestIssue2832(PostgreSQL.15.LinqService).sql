(107395) SELECT 
	t107395.Id = t107394.Id
FROM [DctSetpointtype(107394)] as t107394 (spt)
		LEFT JOIN (
			[VWellTree(107397)] as t107397 (t2)
				INNER JOIN [DctOu(107399)] as t107399 (tp2) ON ({t107397.ShopId?}? = {t107399.Id})
				LEFT JOIN [UacUsersDatagroup(107402)] as t107402 (cudg) ON ({t107399.Id} = {t107402.DatagroupId} AND {t107402.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107407)] as t107407 (oudg) ON ({t107399.ParentId?}? = {t107407.DatagroupId} AND {t107407.UserId} = 150 AND {t107407.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107427)] as t107427 (d) ON ({t107397.WellId?}? = {t107427.WellId})
		)  ON ({t107427.SetpointtypeId} = {t107394.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107402.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107407.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
