(157270) SELECT 
	t157270.Id = t157269.Id
FROM [DctSetpointtype(157269)] as t157269 (spt)
		LEFT JOIN (
			[VWellTree(157272)] as t157272 (t2)
				INNER JOIN [DctOu(157274)] as t157274 (tp2) ON ({t157272.ShopId?}? = {t157274.Id})
				LEFT JOIN [UacUsersDatagroup(157277)] as t157277 (cudg) ON ({t157274.Id} = {t157277.DatagroupId} AND {t157277.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157282)] as t157282 (oudg) ON ({t157274.ParentId?}? = {t157282.DatagroupId} AND {t157282.UserId} = 150 AND {t157282.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157302)] as t157302 (d) ON ({t157272.WellId?}? = {t157302.WellId})
		)  ON ({t157302.SetpointtypeId} = {t157269.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157277.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t157282.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
