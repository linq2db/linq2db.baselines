(249390) SELECT 
	t249390.Id = t249389.Id
FROM [DctSetpointtype(249389)] as t249389 (spt)
		LEFT JOIN (
			[VWellTree(249392)] as t249392 (t2)
				INNER JOIN [DctOu(249394)] as t249394 (tp2) ON ({t249392.ShopId?}? = {t249394.Id})
				LEFT JOIN [UacUsersDatagroup(249397)] as t249397 (cudg) ON ({t249394.Id} = {t249397.DatagroupId} AND {t249397.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(249402)] as t249402 (oudg) ON ({t249394.ParentId?}? = {t249402.DatagroupId} AND {t249402.UserId} = 150 AND {t249402.Inheritablepermission} > 0)
				INNER JOIN [Deviation(249422)] as t249422 (d) ON ({t249392.WellId?}? = {t249422.WellId})
		)  ON ({t249422.SetpointtypeId} = {t249389.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t249397.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t249402.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
