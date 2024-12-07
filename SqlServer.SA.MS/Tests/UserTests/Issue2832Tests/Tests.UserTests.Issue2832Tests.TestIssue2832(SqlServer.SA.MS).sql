(499174) SELECT 
	t499174.Id = t499173.Id
FROM [DctSetpointtype(499173)] as t499173 (spt)
		LEFT JOIN (
			[VWellTree(499176)] as t499176 (t2)
				INNER JOIN [DctOu(499178)] as t499178 (tp2) ON ({t499176.ShopId?}? = {t499178.Id})
				LEFT JOIN [UacUsersDatagroup(499181)] as t499181 (cudg) ON ({t499178.Id} = {t499181.DatagroupId} AND {t499181.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499186)] as t499186 (oudg) ON ({t499178.ParentId?}? = {t499186.DatagroupId} AND {t499186.UserId} = 150 AND {t499186.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499206)] as t499206 (d) ON ({t499176.WellId?}? = {t499206.WellId})
		)  ON ({t499206.SetpointtypeId} = {t499173.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499181.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t499186.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
