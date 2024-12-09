(106742) SELECT 
	t106742.Id = t106741.Id
FROM [DctSetpointtype(106741)] as t106741 (spt)
		LEFT JOIN (
			[VWellTree(106744)] as t106744 (t2)
				INNER JOIN [DctOu(106746)] as t106746 (tp2) ON ({t106744.ShopId?}? = {t106746.Id})
				LEFT JOIN [UacUsersDatagroup(106749)] as t106749 (cudg) ON ({t106746.Id} = {t106749.DatagroupId} AND {t106749.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106754)] as t106754 (oudg) ON ({t106746.ParentId?}? = {t106754.DatagroupId} AND {t106754.UserId} = 150 AND {t106754.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106774)] as t106774 (d) ON ({t106744.WellId?}? = {t106774.WellId})
		)  ON ({t106774.SetpointtypeId} = {t106741.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106749.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106754.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
