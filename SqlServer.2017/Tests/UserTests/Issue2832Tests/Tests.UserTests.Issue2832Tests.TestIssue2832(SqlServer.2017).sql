(245244) SELECT 
	t245244.Id = t245243.Id
FROM [DctSetpointtype(245243)] as t245243 (spt)
		LEFT JOIN (
			[VWellTree(245246)] as t245246 (t2)
				INNER JOIN [DctOu(245248)] as t245248 (tp2) ON ({t245246.ShopId?}? = {t245248.Id})
				LEFT JOIN [UacUsersDatagroup(245251)] as t245251 (cudg) ON ({t245248.Id} = {t245251.DatagroupId} AND {t245251.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245256)] as t245256 (oudg) ON ({t245248.ParentId?}? = {t245256.DatagroupId} AND {t245256.UserId} = 150 AND {t245256.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245276)] as t245276 (d) ON ({t245246.WellId?}? = {t245276.WellId})
		)  ON ({t245276.SetpointtypeId} = {t245243.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245251.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245256.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
