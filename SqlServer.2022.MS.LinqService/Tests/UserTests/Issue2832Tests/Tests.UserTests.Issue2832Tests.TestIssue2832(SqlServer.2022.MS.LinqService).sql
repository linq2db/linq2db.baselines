(249425) SELECT 
	t249425.Id = t249424.Id
FROM [DctSetpointtype(249424)] as t249424 (spt)
		LEFT JOIN (
			[VWellTree(249427)] as t249427 (t2)
				INNER JOIN [DctOu(249429)] as t249429 (tp2) ON ({t249427.ShopId?}? = {t249429.Id})
				LEFT JOIN [UacUsersDatagroup(249432)] as t249432 (cudg) ON ({t249429.Id} = {t249432.DatagroupId} AND {t249432.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249437)] as t249437 (oudg) ON ({t249429.ParentId?}? = {t249437.DatagroupId} AND {t249437.UserId} = 150 AND {t249437.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249457)] as t249457 (d) ON ({t249427.WellId?}? = {t249457.WellId})
		)  ON ({t249457.SetpointtypeId} = {t249424.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249432.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t249437.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
