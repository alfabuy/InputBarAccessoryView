// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "InputBarAccessoryView",
	platforms: [.iOS(.v15)],
	products: [
		.library(name: "InputBarAccessoryView", targets: ["InputBarAccessoryView"]),
	],
	dependencies: [
		.package(url: "https://github.com/perfectdim/CustomBlurEffectView.git", from: "0.0.1")
	],
	targets: [
		.target(
			name: "InputBarAccessoryView",
			dependencies: ["CustomBlurEffectView"],
			path: "Sources",
			exclude: ["Supporting/Info.plist"]
		)
	],
	swiftLanguageVersions: [.v5]
)
