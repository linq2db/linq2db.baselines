(168580) SELECT 
	t168580.Id = t168579.Id
FROM [DctSetpointtype(168579)] as t168579 (spt)
		LEFT JOIN (
			(168617) SELECT 
				t168617.SetpointtypeId        = t168612.SetpointtypeId,
				t168617.Permission            = t168587.Permission?,
				t168617.Inheritablepermission = t168592.Inheritablepermission?
			FROM [VWellTree(168582)] as t168582 (t2)
					INNER JOIN [DctOu(168584)] as t168584 (tp2) ON ({t168582.ShopId?}? = {t168584.Id})
					LEFT JOIN [UacUsersDatagroup(168587)] as t168587 (cudg) ON ({t168584.Id} = {t168587.DatagroupId} AND {t168587.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168592)] as t168592 (oudg) ON ({t168584.ParentId?}? = {t168592.DatagroupId} AND {t168592.UserId} = 150 AND {t168592.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168612)] as t168612 (d) ON ({t168582.WellId?}? = {t168612.WellId})
		) as t168617 (t1) ON ({t168617.SetpointtypeId?} = {t168579.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168617.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168617.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
