# Install Tasks

install-iOS:
	true

install-OSX:
	true

install-tvOS:
	true

install-lint:
	brew remove swiftlint --force || true
	brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/3d0cc175398ceba2c42204b04dd2a3b5d79536d9/Formula/swiftlint.rb

install-carthage:
	brew remove carthage --force || true
	brew install https://raw.githubusercontent.com/Homebrew/homebrew/b0ea85753ecee494dc97fc9f95c5afb9d0b447be/Library/Formula/carthage.rb

install-coverage:
	true

install-swiftpm-osx:
	true

# Run Tasks

test-lint:
	swiftlint lint --strict 2>/dev/null

test-iOS:
	set -o pipefail && \
		xcodebuild \
		-project Mapper.xcodeproj \
		-scheme StreemMapper \
		-destination "name=iPhone 6s" \
		test \
		| xcpretty -ct

test-OSX:
	set -o pipefail && \
		xcodebuild \
		-project Mapper.xcodeproj \
		-scheme StreemMapper \
		test \
		| xcpretty -ct

test-tvOS:
	set -o pipefail && \
		xcodebuild \
		-project Mapper.xcodeproj \
		-scheme StreemMapper \
		-destination "name=Apple TV 1080p" \
		test \
		| xcpretty -ct

test-carthage:
	carthage build --no-skip-current
	ls Carthage/build/Mac/StreemMapper.framework
	ls Carthage/build/iOS/StreemMapper.framework
	ls Carthage/build/tvOS/StreemMapper.framework
	ls Carthage/build/watchOS/StreemMapper.framework