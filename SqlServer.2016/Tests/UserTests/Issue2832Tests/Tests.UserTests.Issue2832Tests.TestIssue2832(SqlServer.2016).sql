(243884) SELECT 
	t243884.Id = t243883.Id
FROM [DctSetpointtype(243883)] as t243883 (spt)
		LEFT JOIN (
			[VWellTree(243886)] as t243886 (t2)
				INNER JOIN [DctOu(243888)] as t243888 (tp2) ON ({t243886.ShopId?}? = {t243888.Id})
				LEFT JOIN [UacUsersDatagroup(243891)] as t243891 (cudg) ON ({t243888.Id} = {t243891.DatagroupId} AND {t243891.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243896)] as t243896 (oudg) ON ({t243888.ParentId?}? = {t243896.DatagroupId} AND {t243896.UserId} = 150 AND {t243896.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243916)] as t243916 (d) ON ({t243886.WellId?}? = {t243916.WellId})
		)  ON ({t243916.SetpointtypeId} = {t243883.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243891.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243896.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
