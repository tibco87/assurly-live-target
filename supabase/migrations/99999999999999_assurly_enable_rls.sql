-- Assurly: enable Row-Level Security on "customers". With RLS on and no
-- policy, every query through the anon/authenticated roles returns zero rows —
-- add a policy for your tenancy model before you deploy.
ALTER TABLE "customers" ENABLE ROW LEVEL SECURITY;
-- TODO(assurly): complete and uncomment a policy that scopes rows to the caller:
-- CREATE POLICY "assurly_customers" ON "customers"
--   FOR ALL USING ( /* e.g. organization_id = auth.jwt() ->> 'org_id' */ );
