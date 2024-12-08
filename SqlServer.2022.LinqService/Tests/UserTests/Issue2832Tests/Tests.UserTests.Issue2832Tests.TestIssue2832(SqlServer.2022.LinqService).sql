(249382) SELECT 
	t249382.Id = t249381.Id
FROM [DctSetpointtype(249381)] as t249381 (spt)
		LEFT JOIN (
			[VWellTree(249384)] as t249384 (t2)
				INNER JOIN [DctOu(249386)] as t249386 (tp2) ON ({t249384.ShopId?}? = {t249386.Id})
				LEFT JOIN [UacUsersDatagroup(249389)] as t249389 (cudg) ON ({t249386.Id} = {t249389.DatagroupId} AND {t249389.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249394)] as t249394 (oudg) ON ({t249386.ParentId?}? = {t249394.DatagroupId} AND {t249394.UserId} = 150 AND {t249394.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249414)] as t249414 (d) ON ({t249384.WellId?}? = {t249414.WellId})
		)  ON ({t249414.SetpointtypeId} = {t249381.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249389.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t249394.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
