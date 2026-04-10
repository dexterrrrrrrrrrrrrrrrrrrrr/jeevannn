# SQLite-Only Backend Migration (Approved)

**Current Status:** User confirmed "yes" - MongoDB not connected, switch to SQLite-only.

**Steps:**
- [ ] 1. Remove MongoDB imports/client/endpoints from backend/server.py
- [ ] 2. Update backend/requirements.txt (remove pymongo, motor)
- [ ] 3. Test SQLite-only server reload
- [ ] 4. Commit to blackboxai/sqlite-only branch + PR
- [ ] 5. Update README.md deployment instructions

**Benefits:** Simpler, faster, no external DB deps for core care network.
