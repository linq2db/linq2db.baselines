(217161) SELECT 
	t217161.Id = t217160.Id
FROM [DctSetpointtype(217160)] as t217160 (spt)
		LEFT JOIN (
			[VWellTree(217163)] as t217163 (t2)
				INNER JOIN [DctOu(217165)] as t217165 (tp2) ON ({t217163.ShopId?}? = {t217165.Id})
				LEFT JOIN [UacUsersDatagroup(217168)] as t217168 (cudg) ON ({t217165.Id} = {t217168.DatagroupId} AND {t217168.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(217173)] as t217173 (oudg) ON ({t217165.ParentId?}? = {t217173.DatagroupId} AND {t217173.UserId} = 150 AND {t217173.Inheritablepermission} > 0)
				INNER JOIN [Deviation(217193)] as t217193 (d) ON ({t217163.WellId?}? = {t217193.WellId})
		)  ON ({t217193.SetpointtypeId} = {t217160.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t217168.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t217173.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
