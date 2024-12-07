(499213) SELECT 
	t499213.Id = t499212.Id
FROM [DctSetpointtype(499212)] as t499212 (spt)
		LEFT JOIN (
			[VWellTree(499215)] as t499215 (t2)
				INNER JOIN [DctOu(499217)] as t499217 (tp2) ON ({t499215.ShopId?}? = {t499217.Id})
				LEFT JOIN [UacUsersDatagroup(499220)] as t499220 (cudg) ON ({t499217.Id} = {t499220.DatagroupId} AND {t499220.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499225)] as t499225 (oudg) ON ({t499217.ParentId?}? = {t499225.DatagroupId} AND {t499225.UserId} = 150 AND {t499225.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499245)] as t499245 (d) ON ({t499215.WellId?}? = {t499245.WellId})
		)  ON ({t499245.SetpointtypeId} = {t499212.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499220.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t499225.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
