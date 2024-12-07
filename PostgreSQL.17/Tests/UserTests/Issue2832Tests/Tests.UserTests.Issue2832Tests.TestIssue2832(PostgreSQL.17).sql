(106567) SELECT 
	t106567.Id = t106566.Id
FROM [DctSetpointtype(106566)] as t106566 (spt)
		LEFT JOIN (
			[VWellTree(106569)] as t106569 (t2)
				INNER JOIN [DctOu(106571)] as t106571 (tp2) ON ({t106569.ShopId?}? = {t106571.Id})
				LEFT JOIN [UacUsersDatagroup(106574)] as t106574 (cudg) ON ({t106571.Id} = {t106574.DatagroupId} AND {t106574.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106579)] as t106579 (oudg) ON ({t106571.ParentId?}? = {t106579.DatagroupId} AND {t106579.UserId} = 150 AND {t106579.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106599)] as t106599 (d) ON ({t106569.WellId?}? = {t106599.WellId})
		)  ON ({t106599.SetpointtypeId} = {t106566.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106574.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106579.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
