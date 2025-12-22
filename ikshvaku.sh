# ~/.ikshvaku/ikshvaku.sh

ikshvaku() {
    local ENV_DIR="$HOME/.Python-Env"

    case "$1" in
        list)
            ls "$ENV_DIR"
            ;;

        create)
            [ -z "$2" ] && echo "Usage: ikshvaku create <env>" && return 1
            python3 -m venv "$ENV_DIR/$2"
            echo "Environment '$2' created"
            ;;

        activate)
            [ -z "$2" ] && echo "Usage: ikshvaku activate <env>" && return 1
            [ ! -d "$ENV_DIR/$2" ] && echo "Env not found" && return 1
            source "$ENV_DIR/$2/bin/activate"
            export IKSHVAKU_ACTIVE="$2"
            ;;

        deactivate)
            deactivate 2>/dev/null || echo "No env active"
            unset IKSHVAKU_ACTIVE
            ;;

        remove)
            [ -z "$2" ] && echo "Usage: ikshvaku remove <env>" && return 1
            rm -rf "$ENV_DIR/$2"
            echo "Environment '$2' removed"
            ;;

        *)
            echo "Commands:"
            echo "  ikshvaku list"
            echo "  ikshvaku create <env>"
            echo "  ikshvaku activate <env>"
            echo "  ikshvaku deactivate"
            echo "  ikshvaku remove <env>"
            ;;
    esac
}
