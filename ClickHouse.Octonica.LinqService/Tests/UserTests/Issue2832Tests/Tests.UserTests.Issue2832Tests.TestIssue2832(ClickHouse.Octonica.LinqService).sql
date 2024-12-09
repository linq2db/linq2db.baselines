(168618) SELECT 
	t168618.Id = t168617.Id
FROM [DctSetpointtype(168617)] as t168617 (spt)
		LEFT JOIN (
			(168655) SELECT 
				t168655.SetpointtypeId        = t168650.SetpointtypeId,
				t168655.Permission            = t168625.Permission?,
				t168655.Inheritablepermission = t168630.Inheritablepermission?
			FROM [VWellTree(168620)] as t168620 (t2)
					INNER JOIN [DctOu(168622)] as t168622 (tp2) ON ({t168620.ShopId?}? = {t168622.Id})
					LEFT JOIN [UacUsersDatagroup(168625)] as t168625 (cudg) ON ({t168622.Id} = {t168625.DatagroupId} AND {t168625.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168630)] as t168630 (oudg) ON ({t168622.ParentId?}? = {t168630.DatagroupId} AND {t168630.UserId} = 150 AND {t168630.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168650)] as t168650 (d) ON ({t168620.WellId?}? = {t168650.WellId})
		) as t168655 (t1) ON ({t168655.SetpointtypeId?} = {t168617.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168655.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168655.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
