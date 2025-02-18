TEST_STRING="### Application

- [ ] Alloy
- [ ] Blueprint
- [ ] Caster
- [ ] CITE
- [ ] Gallery
- [x] Gameboard
- [ ] Player
- [ ] Steamfitter
- [ ] TopoMojo
- [ ] General Docs Update - Not Application Specific

### Type of Update

- [ ] New feature
- [ ] Correction
- [ ] Enhancement
- [x] Other

### Description

Test"

# Remove newlines
FLAT_STRING=$(echo "$TEST_STRING" | tr '\n' ' ')

LABELS=""

case "$FLAT_STRING" in
    *"- [x] Gameboard"*) LABELS="$LABELS Gameboard" ;;
    *"- [x] Other"*) LABELS="$LABELS Other" ;;
esac

echo "LABELS=$LABELS"
